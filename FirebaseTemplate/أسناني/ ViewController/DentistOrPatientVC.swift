//
//  DentistOrPatientVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class DentistOrPatientVC: UIViewController {
    
    
    @IBAction func momoKaKa(_ sender: UIButton) {
        performSegue(withIdentifier: "5", sender: sender.tag)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let tag = sender as? Int{
            
            
            if let vc = segue.destination as? SignInVC {
                vc.tag = tag
            }
        }
    }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
        }
        
    
}
