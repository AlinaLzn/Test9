//
//  GeneralModel.swift
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

class GeneralViewModel {

    var validCatsFacts = Observable<Bool>(false)
    var validDogsPhotos = Observable<Bool>(false)

    func getFactsMapple(completion: (MutableObservableArray<NewFactsModel>, Error) -> Void) -> () {
        Alamofire.request(GlobalVariable.url).responseObject { (response: DataResponse<NewFactsModel>) in
            switch response.result {
            case .success:
                self.validCatsFacts.value = true
            case .failure:
                self.validCatsFacts.value = true
                
            }
        }
    }
    
    func getPhotosMapple(completion: (MutableObservableArray<String>, Error) -> Void) -> () {
        Alamofire.request(GlobalVariable.dogUrl).responseObject { (response: DataResponse<DogModel>) in
            switch response.result {
            case .success:
                self.validDogsPhotos.value = true
            case .failure:
               self.validDogsPhotos.value = true
            }
        }
    }
}
