//
//  InformationVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/14/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class InformationVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func next(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: {(authResult , error) in
            
            if let error = error {
                print("Error")
            }else{
                Auth.auth().currentUser?.sendEmailVerification(completion: nil)
               // let uid = (Auth.auth().currentUser?.uid)
                //Auth.auth().currentUser?.setValue("true", forKey: "isPatient")
               // print(  Auth.auth().currentUser?.value(forKey: "isPatient"))
                Auth.auth().currentUser?.setValue(  ["this": "test"], forKey: "isPatient")
               print( Auth.auth().currentUser?.value(forKey: "isPatient"))
            
            }
        })
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
