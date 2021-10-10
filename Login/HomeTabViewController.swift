//
//  HomeTabViewController.swift
//  Login
//
//  Created by AUSTINE on 09/10/2021.
//

import UIKit

class HomeTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        

    }
    
    
     
}


extension UIViewController{
    
    func createViewController(for rootViewController: UIViewController,
                              title: String,
                              image: UIImage) -> UIViewController{
        
        let navController = UINavigationController(rootViewController: rootViewController)
                navController.tabBarItem.title = title
                navController.tabBarItem.image = image
                navController.navigationBar.prefersLargeTitles = true
        
                rootViewController.title = title
                return navController
    }
    

    
  
    
}
