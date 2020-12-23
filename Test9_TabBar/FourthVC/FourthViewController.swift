//
//  FourthViewController.swift
//  Test9_TabBar
//
//  Created by Alina on 2020-12-23.
//  Copyright © 2020 Alina. All rights reserved.
//

import UIKit
import KeychainSwift

enum Keys {
    static let prefix = "keyPrefix_"
    static let userName = "name"
    static let userPassword = "name"

}

class FourthViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let keychain = KeychainSwift(keyPrefix: Keys.prefix)

    override func viewDidLoad() {
        super.viewDidLoad()
//        nameTextField.text = keychain.set(name, forKey: Keys.userName, withAccess: .accessibleWhenUnlocked)

    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
       
        if nameTextField.text != "", passwordTextField.text != "" {
            guard let name = nameTextField.text,
                  let password = passwordTextField.text else { return }
            keychain.set(name, forKey: Keys.userName, withAccess: .accessibleAfterFirstUnlock)
            keychain.set(password, forKey: Keys.userPassword, withAccess: .accessibleAfterFirstUnlock)
            print(name + " " + password)
        }
    }
    
    @IBAction func showAlertButtonAction(_ sender: UIButton) {
       
        guard let name = keychain.get(Keys.userName),
              let password = keychain.get(Keys.userPassword)  else { return }
//        nameTextField.text = "\(name)"
//        passwordTextField.text = "\(password)"
        
        showAlert(name: name, password: password)
    }
    
    @IBAction func decryptButtonAction(_ sender: UIButton) {
//
//        guard let name = keychain.getData(Keys.userName, asReference: true) as? String else { return }
//        nameTextField.text = "\(name)"
//
//        guard let password = keychain.getData(Keys.userPassword, asReference: true) as? String else { return }
//        passwordTextField.text = "\(password)"
//        print(name + "" + password)
//        showAlert(name: name, password: password)
    }
    
    func showAlert(name: String, password: String) {
        let alertController = UIAlertController(title: "Сохраненные данные:", message: "Имя: \(name)  \nПароль: \(password)", preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
        let actionOk = UIAlertAction(title: "OK", style: .default, handler: { action in
                                        alertController.dismiss(animated: true, completion: nil) })
        alertController.addAction(actionOk)
    }
}
