//
//  CatsViewModel.swift
//  Test9_TabBar
//
//  Created by user on 17.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

//import Foundation
//import Alamofire
//import ObjectMapper
//import AlamofireObjectMapper
//import ReactiveKit
//import Bond
//import NVActivityIndicatorView

//class ViewModel {
//    
//    var facts = MutableObservableArray<FactModel>([])
//    var error = Observable<Error?>(nil)
//
////    func fetch() {
////        getFactsMapple { [weak self] (facts, error) in
////            self?.facts.insert(contentsOf: facts.array, at: 0)
////            self?.error.value = error
////        }
////    }
//    
//    func getFactsMapple(completion: (MutableObservableArray<FactModel>, Error) -> Void) -> () {
//        Alamofire.request(GlobalVariable.url).responseObject { (response: DataResponse<AllFactsModel>) in
//            switch response.result {
//            case .success(let data):
//                if let arrayFacts = data.facts {
//                    self.facts.insert(contentsOf: arrayFacts, at: 0)
//                    print(arrayFacts)
//                }
//            case .failure(let error):
//                print(error.localizedDescription)
//                self.error.send(error)
//            }
//        }
//    }
//}
