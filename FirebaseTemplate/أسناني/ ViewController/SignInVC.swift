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
    var tag: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func singIN(_ sender: UIButton) {
      
        switch tag {
        case 0:
            performSegue(withIdentifier: "3", sender: nil)
        case 1:
            performSegue(withIdentifier: "4", sender: nil)
        default:
            ""
        }
        
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
