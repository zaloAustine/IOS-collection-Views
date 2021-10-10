//
//  ViewController.swift
//  Login
//
//  Created by AUSTINE on 08/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumberInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    @IBAction func goHome(_ sender: Any) {
             
        guard let quotesViewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "HomeTabViewController") as? HomeTabViewController else{return}
        
        quotesViewController.modalPresentationStyle = .fullScreen

        self.present(quotesViewController as UIViewController, animated: true,completion:{})
   }
        
    }

        


