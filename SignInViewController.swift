//
//  SignInViewController.swift
//  Assignement_2
//
//  Created by Kaycee Collins on 9/23/15.
//  Copyright (c) 2015 ___kayceeAcollins___. All rights reserved.
//

import UIKit


//DEFINE GLOBAL VARIABLES HERE
class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var smokeScreenUIView: UIView!
    @IBOutlet weak var signinLoader: UITextField!
    @IBOutlet weak var signinText: UITextField!
    @IBOutlet weak var signinButtons: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signinLoader.frame.size.height = 60
        
        
      
    }

    
    //NOTHING GOES HERE!!!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Do any additional setup after loading the view.
        // Dispose of any resources that can be recreated.
    }
    
    
    //PUT ALL FUNCTIONALITY HERE!!
    
    //DELAY THING - REQUIRED
    
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    
    //SIGNIN BUTTON FUNCTION
    @IBAction func onSignin(sender: AnyObject) {
        
        
        //SUCCESS
        if emailField.text == "tim@thecodepath.com" && passwordField.text == "password" {
            
            //SIGNING IN...
            
            smokeScreenUIView.hidden = false
            
            signinText.hidden = false
            
            
            //DELAY
            // Delay for 2 seconds, then run the code between the braces.
            delay(2) {
                
                //SEGUE
                self.performSegueWithIdentifier("logginSegue", sender: nil)
                
            }
                
            }
        

            
        //FAIL
        else {
            
            //NO EMAIL PROVIDED
                if emailField.text!.isEmpty {
                let alert = UIAlertView (title: "Email Required", message: "Please enter your email address", delegate: nil, cancelButtonTitle: "OK")
                    alert.show()
            }
            
            //INCORRECT CREDENTIALS
            else{
            let alert = UIAlertView (title: "Sign In Failed", message: "Incorrect email or password", delegate: nil, cancelButtonTitle: "OK")
                alert.show()
            }
        }
        
    }
    //END SIGNIN BUTTON FUNCTION
    
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

