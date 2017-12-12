//
//  HoroscopeInfo.swift
//  UserDefaults-Exercises
//
//  Created by C4Q on 12/11/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import Foundation

struct HoroscopeInfo: Codable {
    let compatibility: String
    let luckyNumber: String
    let mood: String
    let dateRange: String
    let color: String
    let luckyTime: String
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case compatibility, mood, color, description
        case luckyNumber = "lucky_number"
        case dateRange = "date_range"
        case luckyTime = "lucky_time"
    }
}


