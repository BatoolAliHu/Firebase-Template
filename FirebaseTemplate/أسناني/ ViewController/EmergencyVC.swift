//
//  EmergencyVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class EmergencyVC: UIViewController {
    
    var tag: Int = 0 // map or hospitals (3/4)
    var hospital: [String] = []
    let segues = [
        3: "map",
        4: "hospital"
    ]
    
    let emergencyHospitals = [
        0 : [
            "مركز الإحقاقي",
            "مركز حمد الصقر"
        ],
        1 : [
            "مركز الفحيحيل التخصصي",
            "مركز القرين التخصصي"
        ],
        2 : [
            "مركز السالمية الغربي",
            "مركز محمود حاجي حيدر"
        ],
        3 : [
            "مركز القصر",
            "مركز الصليبية الجنوبي"
        ],
        4 : [
            "مركز الرقة",
            "مركز عبدالله المبارك"
        ],
        5 : [
            "مركز عبدالله مبارك",
            "مركز الفروانية الغربي"
        ],
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    @IBAction func ifTapped(_ sender: UIButton) {
        if tag == 3{
            /*
             switch sender.tag {
             case 0:
             hospital = ["الاحقاقي","حمد الصقر"]
             case 1:
             hospital = ["محمود حيدر","مبارك"]
             case 2:
             hospital = ["hgrndk","hgrwmn"]
             default:
             break
             }
             */
            hospital = emergencyHospitals[sender.tag]!
            performSegue(withIdentifier: "map", sender: nil)
            
            
        }
        let segueName = segues[tag]
        performSegue(withIdentifier: segueName!, sender: nil)
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "map"{
            let vc = segue.destination as! MapsNameVC
            vc.hospital = hospital
            
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}

