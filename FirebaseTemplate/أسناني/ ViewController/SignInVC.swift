//
//  SignInVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInVC: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var pss: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func singIN(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: userName.text!, password: pss.text!, completion: {
            [weak self] authResult, error in
            guard let strongSelf = self else {return}
            
            if let error = error {
                String.popAlert(presenter: strongSelf, Title: "Error", message: error.localizedDescription)
            }else{
                strongSelf.performSegue(withIdentifier: "", sender: nil)
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
