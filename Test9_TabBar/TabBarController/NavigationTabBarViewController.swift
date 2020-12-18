//
//  NavigationTabBarViewController.swift
//  Test9_TabBar
//
//  Created by user on 16.12.2020.
//  Copyright © 2020 Alina. All rights reserved.
//

import UIKit

class NavigationTabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        // Create firstTab
        let firstViewController = DateViewController()
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        // Create secondTab
        let secondViewController = FavoriteViewController()
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        // Create secondTab
        let thirdViewController = SettingsViewController()
        thirdViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)
        
        let tabBarList = [firstViewController, secondViewController, thirdViewController]
        viewControllers = tabBarList
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//        print("Should select viewController: \(viewController.title ?? "")?")
        return true
    }
}
