//
//  SettingsTableViewController.swift
//  UserDefaults-Exercises
//
//  Created by C4Q on 12/11/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthDatePicker: UIDatePicker!
    
    let defaults = UserDefaults.standard
    let nameKey = "nameKey"
    let birthdayKey = "birthdayKey"
    let signKey = "signKey"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = defaults.value(forKey: nameKey) as? String {
            nameTextField.text = name
        }
        
        if let birthday = defaults.value(forKey: birthdayKey) as? Date {
            birthDatePicker.setDate(birthday, animated: false)
        }
    }
    
    @IBAction func confirmSettingsButtonPressed(_ sender: UIButton) {
        
        guard let name = nameTextField.text, name.count != 0 else {
            return
        }
        
        defaults.set(name, forKey: nameKey)
    
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let birthYear = birthDatePicker.date.description.components(separatedBy: "-")[0]
        
        let aquarius = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-01-20")!, end: dateFormatter.date(from: "\(birthYear)-02-18")!)
        
        let pisces = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-02-19")!, end: dateFormatter.date(from: "\(birthYear)-03-20")!)
        
        let aries = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-03-21")!, end: dateFormatter.date(from: "\(birthYear)-04-19")!)
        
        let taurus = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-04-20")!, end: dateFormatter.date(from: "\(birthYear)-05-20")!)
        
        let gemini = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-05-21")!, end: dateFormatter.date(from: "\(birthYear)-06-20")!)
        
        let cancer = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-06-21")!, end: dateFormatter.date(from: "\(birthYear)-07-22")!)
        
        let leo = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-07-23")!, end: dateFormatter.date(from: "\(birthYear)-08-22")!)
        
        let virgo = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-08-23")!, end: dateFormatter.date(from: "\(birthYear)-09-22")!)
        
        let libra = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-09-23")!, end: dateFormatter.date(from: "\(birthYear)-10-22")!)
        
        let scorpio = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-10-23")!, end: dateFormatter.date(from: "\(birthYear)-11-21")!)
        
        let sagittarius = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-11-22")!, end: dateFormatter.date(from: "\(birthYear)-12-21")!)
        
        let capricorn = DateInterval.init(start: dateFormatter.date(from: "\(birthYear)-12-22")!, end: dateFormatter.date(from: "\(birthYear)-01-19")!)
        
        var sign: String = ""
    
        let birthDate = birthDatePicker.date
        
        if aquarius.contains(birthDate) {
            sign = "aquarius"
        } else if pisces.contains(birthDate) {
            sign = "pisces"
        } else if aries.contains(birthDate) {
            sign = "aries"
        } else if taurus.contains(birthDate) {
            sign = "taurus"
        } else if gemini.contains(birthDate) {
            sign = "gemini"
        } else if cancer.contains(birthDate) {
            sign = "cancer"
        } else if leo.contains(birthDate) {
            sign = "leo"
        } else if virgo.contains(birthDate) {
            sign = "virgo"
        } else if libra.contains(birthDate) {
            sign = "libra"
        } else if scorpio.contains(birthDate) {
            sign = "scorpio"
        } else if sagittarius.contains(birthDate) {
            sign = "sagittarius"
        } else if capricorn.contains(birthDate) {
            sign = "capricorn"
        }
        
        defaults.set(sign, forKey: signKey)
        
        defaults.set(birthDatePicker.date, forKey: birthdayKey)
        
        (self as UIViewController).present(UserEstablishedViewController(), animated: true, completion: nil)
    }
    
}
