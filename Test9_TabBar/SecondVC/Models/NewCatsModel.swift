//
//  NewCatsModel.swift
//  Test9_TabBar
//
//  Created by user on 17.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

//[
//{
//    "status": {
//        "verified": true,
//        "sentCount": 1,
//        "feedback": ""
//    },
//    "type": "cat",
//    "deleted": false,
//    "_id": "5887e1d85c873e0011036889",
//    "user": "5a9ac18c7478810ea6c06381",
//    "text": "Cats make about 100 different sounds. Dogs make only about 10.",
//    "__v": 0,
//    "source": "user",
//    "updatedAt": "2020-09-03T16:39:39.578Z",
//    "createdAt": "2018-01-15T21:20:00.003Z",
//    "used": true
//},
//{}
//]

import Foundation
import ObjectMapper

struct NewFactsModel: Mappable {
   var text: String?

    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
         text <- map["text"]
    }
}
