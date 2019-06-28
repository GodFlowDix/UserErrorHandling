//
//  ViewController.swift
//  UserErrorHandling
//
//  Created by Mike Dix on 6/27/19.
//  Copyright © 2019 Mike Dix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum LoginError: Error {  //cases youll handle during login process
        case incompleteForm
        case invalidEmail
        case incorrectPasswordLength
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        do {
            try login()
            //transition to next screen
            
        } catch LoginError.incompleteForm {
            Alert.showBasic(title: "Incomplete Form", message: "Please fill out both email and password text fields", vc: self)
        } catch LoginError.invalidEmail {
            Alert.showBasic(title: "Invalid Email", message: "Please enter a valid email address", vc: self)
        } catch LoginError.incorrectPasswordLength {
            Alert.showBasic(title: "Incorrect Password length", message: "Please enter a valid password length of 8 Characters of more.", vc: self)
        } catch {
            Alert.showBasic(title: "Enable To Login", message: "There was an error when attempting to login", vc: self)
        }
    
    }
    
    func login() throws {
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        if email.isEmpty || password.isEmpty {
            throw LoginError.incompleteForm
        }
        if !email.isValidEmail {
            throw LoginError.invalidEmail
            
        }
        if password.count < 8 {
            throw LoginError.incorrectPasswordLength
        }
        
        //Pretend this is great code that logs in user
    }
}

