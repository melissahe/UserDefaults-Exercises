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
        
        (self as UIViewController).present(UserEstablishedViewController(), animated: true, completion: nil)
    }
    
}
