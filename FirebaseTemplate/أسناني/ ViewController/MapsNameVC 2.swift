//
//  MapsNameVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/16/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class MapsNameVC: UIViewController {
    var hospital: [String]!
    var name1 : String!
    var name2 : String!
    var seleactedLoc = ""
    
    @IBOutlet weak var map1: UIButton!
    @IBOutlet weak var map2: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(name2,name1)
        map1.setTitle(hospital[0], for: .normal)
        map2.setTitle(hospital[1], for: .normal)
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mapBtn1(_ sender: UIButton) {
        seleactedLoc = hospital[0]
        performSegue(withIdentifier: "map", sender: nil)
    }
    
    @IBAction func mapBtn2(_ sender: UIButton) {
         seleactedLoc = hospital[1]
         performSegue(withIdentifier: "map", sender: nil)
    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "map"{
        let vc = segue.destination as! MapsVC
            vc.seleactedLoc = seleactedLoc
//        vc.hospital = hospital
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        
     }
     
    
}
}
