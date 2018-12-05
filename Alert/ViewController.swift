//
//  ViewController.swift
//  Alert
//
//  Created by cagdas on 5.12.2018.
//  Copyright © 2018 cagdas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Show Alert
    @IBAction func btnShow(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Default Style", message: "A standard alert.", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            // ...
        }
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
            // ...
        }
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true) {
            // ...
        }
        
    }

    @IBAction func btnMultiAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Default Style", message: "A standard alert.", preferredStyle: .alert)
        
        let oneAction = UIAlertAction(title: "One", style: .default) { (_) in }
        let twoAction = UIAlertAction(title: "Two", style: .default) { (_) in }
        let threeAction = UIAlertAction(title: "Three", style: .default) { (_) in }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (_) in }
        
        alertController.addAction(oneAction)
        alertController.addAction(twoAction)
        alertController.addAction(threeAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true) {
            // ...
        }
        
    }
    
    @IBAction func btnActionSheet(_ sender: Any) {
        
        let alertController = UIAlertController(title: nil, message: "Takes the appearance of the bottom bar if specified; otherwise, same as UIActionSheetStyleDefault.", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            // ...
        }
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
            // ...
        }
        alertController.addAction(OKAction)
        
        let destroyAction = UIAlertAction(title: "Destroy", style: .destructive) { (action) in
            print(action)
        }
        alertController.addAction(destroyAction)
        
        self.present(alertController, animated: true) {
            // ...
        }
        
    }
    @IBAction func btnLoginForm(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Default Style", message: "A standard alert.", preferredStyle: .alert)
        
        let loginAction = UIAlertAction(title: "Login", style: .default) { (_) in
            let loginTextField = alertController.textFields![0] as UITextField
            let passwordTextField = alertController.textFields![1] as UITextField
            
            print(loginTextField.text!)
            print(passwordTextField.text!)
            
        }
        
        loginAction.isEnabled = false
        
        let forgotPasswordAction = UIAlertAction(title: "Forgot Password", style: .destructive) { (_) in }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Login"
            
            NotificationCenter.default.addObserver(forName: NSNotification.Name.UITextFieldTextDidChange, object: textField, queue: OperationQueue.main) { (notification) in
                loginAction.isEnabled = textField.text != ""
            }
        }
        
        alertController.addTextField { (textField) in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        }
        
        alertController.addAction(loginAction)
        alertController.addAction(forgotPasswordAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true) {
            // ...
        }
        
    }
}

