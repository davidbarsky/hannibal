//
//  LoginViewController.swift
//  Hannibal
//
//  Created by David Barsky on 12/21/15.
//  Copyright © 2015 David Barsky. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNeedsStatusBarAppearanceUpdate()
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookLoginButtonWasPressed(sender: AnyObject) {
        let login = FBSDKLoginManager()
        login.logInWithReadPermissions(["public_profile", "email", "user_friends"],
                                       fromViewController: self) { (result, error) in
            if error != nil {
                print("Error logging in: \(error)")
            } else if result.isCancelled {
                print("Login cancelled.")
            } else {
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let initialViewController = mainStoryboard.instantiateViewControllerWithIdentifier("InitialViewController")

                self.presentViewController(initialViewController, animated: true, completion: nil)
            }
        }
    }

    @IBAction func emailLoginButtonWasPressed(sender: AnyObject) {

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
