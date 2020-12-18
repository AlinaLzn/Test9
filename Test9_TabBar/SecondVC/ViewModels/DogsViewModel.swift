//
//  DogsViewModel.swift
//  Test9_TabBar
//
//  Created by user on 17.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper
import ReactiveKit
import Bond

//class DogViewModel {
//    
//    var photos = MutableObservableArray<String>([])
//    var error = Observable<Error?>(nil)
//    
//    
//    func getPhotosMapple(completion: (MutableObservableArray<String>, Error) -> Void) -> () {
//        Alamofire.request(GlobalVariable.dogUrl).responseObject { (response: DataResponse<DogModel>) in
//            switch response.result {
//            case .success(let data):
//                if let arrayPhotos = data.message {
//                    self.photos.insert(contentsOf: arrayPhotos, at: 0)
//                    print(arrayPhotos)
//                }
//                
//            case .failure(let error):
//                print(error.localizedDescription)
//                self.error.send(error)
//            }
//        }
//    }
//}
