//
//  String Extension.swift
//  Test9_TabBar
//
//  Created by user on 17.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

import Foundation
import CryptoSwift

extension String {
    func aesEncrypt() throws -> String {
        let key = "12jfnvjsfnjGGldjkbljdljd34fdGUjf"
        let iv = "kffYGtrJK78HBuhu"
        let encrypted = try AES(key: key, iv: iv, padding: .pkcs7).encrypt([UInt8](self.data(using: .utf8)!))
        return Data(encrypted).base64EncodedString()
    }
    
    func aesDecrypt() throws -> String {
        let key = "12jfnvjsfnjGGldjkbljdljd34fdGUjf"
        let iv = "kffYGtrJK78HBuhu"
        guard let data = Data(base64Encoded: self) else { return "" }
        let decrypted = try AES(key: key, iv: iv, padding: .pkcs7).decrypt([UInt8](data))
        return String(bytes: decrypted, encoding: .utf8) ?? self
    }
}
