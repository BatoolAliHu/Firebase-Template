//
//  DentistsVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit
var selectedDentist : [Dentist] = []
class DentistsVC: UIViewController {
//    var data1: [Dentist]!
//    var data2: [Dentist]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ifTappedHospital(_ sender: UIButton) {
        switch sender.tag{
        case 0:
            selectedDentist = dentistData1
        case 1:
            selectedDentist = dentistData
        default:
            "Data Not Found"
        }
        performSegue(withIdentifier: "MoMoKaKa", sender: nil)

    }
    
    
  
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
   
            let vc = segue.destination as! ChoiceDentistCV
            
            vc.details = selectedDentist
            
        
//        vc.details = dentistData
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
  
    
}
