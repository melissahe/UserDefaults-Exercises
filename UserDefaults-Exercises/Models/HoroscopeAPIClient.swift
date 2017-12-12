//
//  HoroscopeAPIClient.swift
//  UserDefaults-Exercises
//
//  Created by C4Q on 12/11/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import Foundation

class HoroscopeAPIClient {
    private init() {}
    static let manager = HoroscopeAPIClient()
    func getHoroscope(sign: String, day: String, completionHandler: @escaping (HoroscopeInfo) -> Void, errorHandler: @escaping (Error) -> Void) {
        let urlString = "https://aztro.herokuapp.com/?sign=\(sign)&day=\(day)"
        
        guard let url = URL(string: urlString) else {
            print("something wrong with \(urlString)")
            return
        }
        
        let request = URLRequest(url: url)
        
        
        
    }
}
