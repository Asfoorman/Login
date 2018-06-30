//
//  ViewController.swift
//  Login
//
//  Created by Anes Mehai  on 6/29/18.
//  Copyright © 2018 Anes Mehai . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var forgotUserNameBttn: UIButton!
    
    @IBOutlet weak var forgotPasswordBttn: UIButton!
    
    /*
     Forgot User Name Function
     */
    
    @IBAction func forgotUserName(_ sender: Any) {
        
        performSegue(withIdentifier: "ForgottenUserNameOrPassword",
                     sender: forgotUserNameBttn)
        
    }
    
    
    @IBAction func forgotPassword(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        segue.destination.navigationItem.title = usernameTextField.text

    }


}

