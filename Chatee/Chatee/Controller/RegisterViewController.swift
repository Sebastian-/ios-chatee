//
//  RegisterViewController.swift
//  Chatee
//
//  Created by Sebastian Murgu on 2020-02-24.
//  Copyright © 2020 Sebastian Murgu. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
  
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  
  @IBAction func registerButtonTapped(_ sender: UIButton) {
    if let email = emailTextField.text, let password = passwordTextField.text {
      Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
        if let err = error {
          // there was an error, print it
          print(err)
        } else {
          // successfully created user
          self.performSegue(withIdentifier: "showChat", sender: self)
          print("successfully created user " + email)
        }
      }
    }
  }
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
