//
//  UserSettings.swift
//  Test9_TabBar
//
//  Created by user on 18.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

import Foundation
import  CryptoSwift

class UserSettings {
    
    enum SettingsKeys: String {
        case login
        case password
    }
    
    static var userLogin: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.login.rawValue)
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.login.rawValue
            if let encryptedLogin = try? newValue.aesEncrypt() {
            defaults.set(encryptedLogin, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    
    static var userPassword: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.password.rawValue)
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.password.rawValue
            if let encryptedPassword = try? newValue.aesEncrypt() {
            defaults.set(encryptedPassword, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
}
