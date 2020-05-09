//
//  LoginViewController.swift
//  
//
//  Created by Sebastian Murgu on 2020-02-24.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
  
  
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  @IBAction func loginButtonTapped(_ sender: UIButton) {
    if let email = emailTextField.text, let password = passwordTextField.text {
      Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
        if let err = error {
          // there was an error, print it
          print(err)
        } else {
          // successfully created user
          self.performSegue(withIdentifier: "showChat", sender: self)
          print("successfully logged in user " + email)
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
