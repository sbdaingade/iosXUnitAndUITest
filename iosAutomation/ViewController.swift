//
//  ViewController.swift
//  iosAutomation
//
//  Created by Sachin Daingade on 09/10/19.
//  Copyright © 2019 Sachin Daingade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let userName = "sachin"
    let password = "ios123"
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        // Do any additional setup after loading the view.
    }

    func commonAlert(title: String , msg:String)
    {
        DispatchQueue.main.async {
            
            let alert = UIAlertController(title:title, message: msg, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    @IBAction func btnLoginAction(_ sender: Any) {
        
        if ((txtUserName.text?.isEmpty)!)
        {
            self.commonAlert(title: "", msg: "Please enter user name")
        }else if ((txtUserName.text?.isEmpty)!)
        {
            self.commonAlert(title: "", msg: "Please enter password")
            
        }else
        {
            if (txtUserName.text == userName && txtPassword.text == password )
            {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
                self.navigationController?.pushViewController(vc, animated: true)
                
            }else
            {
                self.commonAlert(title: "", msg: "Invalid user or password")
            }
            
        }
    }
    
}

