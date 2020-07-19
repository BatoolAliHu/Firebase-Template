//
//  ViewController.swift
//  أسناني
//
//  Created by Batool Hussain on 7/11/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func batool(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            performSegue(withIdentifier: "دخول", sender: nil)
        case 1:
           performSegue(withIdentifier: "تسجيل دخول", sender: nil)
        default:
            "Data Not Found"
        }
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}



//// MARK: - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
////override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//    // Get the new view controller using segue.destination.
//    // Pass the selected object to the new view controller.
//}



