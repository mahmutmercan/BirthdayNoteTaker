//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by İlker isa Mercan on 11.11.2019.
//  Copyright © 2019 Mahmut Mercan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storedName = UserDefaults.standard.object(forKey: "name")
        let stroedBirthday = UserDefaults.standard.object(forKey: "birthday")
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        if let newBirthday = stroedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
    }

    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
        
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        _ = UserDefaults.standard.object(forKey: "name")

        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        if (storedName as? String) != nil {
            UserDefaults.standard.object(forKey: "name")
            nameLabel.text = "Name: "
        
        }
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.object(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
                
    }
    
}

