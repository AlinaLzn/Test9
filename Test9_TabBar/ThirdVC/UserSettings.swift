//
//  UserSettings.swift
//  Test9_TabBar
//
//  Created by user on 18.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

import Foundation

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
            if let login = newValue {
                defaults.set(login, forKey: key)
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
            if let password = newValue {
                defaults.set(password, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
}
