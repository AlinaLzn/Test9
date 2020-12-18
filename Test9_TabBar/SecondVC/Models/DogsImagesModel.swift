//
//  DogsImagesModel.swift
//  Test9_TabBar
//
//  Created by user on 17.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

import Foundation
import ObjectMapper

struct DogModel: Mappable {
    
    var message: [String]?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        message <- map["message"]
    }
}
