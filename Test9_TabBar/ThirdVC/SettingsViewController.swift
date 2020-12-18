//
//  SettingsViewController.swift
//  Test9_TabBar
//
//  Created by user on 16.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

import UIKit
import CommonCrypto

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        UserSettings.userLogin = loginTextField.text
        UserSettings.userPassword = passwordTextField.text
    }
    
    @IBAction func showAlertButtonAction(_ sender: UIButton) {
        showAlert()
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: "Сохраненные данные:", message: "Логин: \(UserSettings.userLogin ?? "")  \nПароль: \( UserSettings.userPassword ?? "")", preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
        let actionOk = UIAlertAction(title: "OK", style: .default, handler: { action in
            alertController.dismiss(animated: true, completion: nil) })
        alertController.addAction(actionOk)
    }
}
