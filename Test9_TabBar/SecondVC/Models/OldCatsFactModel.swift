//
//  CatsFactModel.swift
//  Test9_TabBar
//
//  Created by user on 17.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

//import Foundation
//import ObjectMapper
//
//struct AllFactsModel: Mappable {
//
//    var facts: [FactModel]?
//
//    init?(map: Map) {
//    }
//
//    mutating func mapping(map: Map) {
//        facts <- map["all"]
//    }
//}
//
//struct FactModel: Mappable {
//
//    var texts: String?
//    var user: UserModel?
//
//    init?(map: Map) {
//    }
//
//    mutating func mapping(map: Map) {
//        texts <- map["text"]
//        user <- map["user"]
//    }
//}
//
//struct UserModel: Mappable {
//
//    var name: NameModel?
//
//    init?(map: Map) {
//    }
//
//    mutating func mapping(map: Map) {
//        name <- map["name"]
//    }
//}
//
//struct NameModel: Mappable {
//
//    var firstName: String?
//    var lastName: String?
//
//    init?(map: Map) {
//    }
//
//    mutating func mapping(map: Map) {
//        firstName <- map["first"]
//        lastName <- map["last"]
//    }
//}
