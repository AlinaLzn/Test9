//
//  SettingsViewController.swift
//  Test9_TabBar
//
//  Created by user on 16.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

import UIKit
import CryptoSwift

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
       
        loginTextField.text = self.getDatainTextFieldsDecrypt()[0]
        passwordTextField.text = self.getDatainTextFieldsDecrypt()[1]
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        if loginTextField.text != "", passwordTextField.text != "" {
            UserSettings.userLogin = loginTextField.text
            UserSettings.userPassword = passwordTextField.text
        }
    }
    
    @IBAction func showAlertButtonAction(_ sender: UIButton) {
        showAlert(login: getDatainTextFieldsEncrypt()[0], password: getDatainTextFieldsEncrypt()[1])
    }
    
    @IBAction func decryptButtonAction(_ sender: UIButton) {
        showAlert(login: getDatainTextFieldsDecrypt()[0], password: getDatainTextFieldsDecrypt()[1])
    }
    
    func getDatainTextFieldsDecrypt() -> [String] {
        if let labelText = UserSettings.userLogin, let passwordText = UserSettings.userPassword {
            do {
                let labText = try labelText.aesDecrypt()
                let pasText = try passwordText.aesDecrypt()
                return [labText, pasText]
            } catch {
                print("Error!")
            }
        }
        return ["", ""]
    }
    
    func getDatainTextFieldsEncrypt() -> [String] {
        if let labelText = UserSettings.userLogin, let passwordText = UserSettings.userPassword {
            do {
                let labText = try labelText.aesEncrypt()
                let pasText = try passwordText.aesEncrypt()
                return [labText, pasText]
            } catch {
                print("Error!")
            }
        }
        return ["", ""]
    }
    
    func showAlert(login: String, password: String) {
        let alertController = UIAlertController(title: "Сохраненные данные:", message: "Логин: \(login)  \nПароль: \(password)", preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
        let actionOk = UIAlertAction(title: "OK", style: .default, handler: { action in
            alertController.dismiss(animated: true, completion: nil) })
        alertController.addAction(actionOk)
    }
}
