//
//  FavoriteViewController.swift
//  Test9_TabBar
//
//  Created by user on 16.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
import AlamofireObjectMapper
import Bond
import ReactiveKit

class FavoriteViewController: UIViewController {
    
    let viewModel = GeneralViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Favorite"
        view.backgroundColor = .cyan

        observeData()
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: "Завершено!", message: nil, preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
        let actionOk = UIAlertAction(title: "OK", style: .default, handler: { action in
            alertController.dismiss(animated: true, completion: nil) })
        alertController.addAction(actionOk)
    }
    
    func observeData() {

        _ = combineLatest(viewModel.validCatsFacts, viewModel.validDogsPhotos)
          .observeNext {
            [weak self] _ in
            self?.showAlert()
            print("Завершено!")
        }
    }
}




















//        viewModel.getFactsMapple { (facts, error) in
//            catViewModel.facts.insert(contentsOf: facts.array, at: 0)
//            catViewModel.error.value = error
//        }
//
//        viewModel.getPhotosMapple { (photos, error) in
//            dogViewModel.photos = photos
//            dogViewModel.error.value = error
//        }
