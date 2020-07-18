//
//  MapsVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/16/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit
import MapKit
class MapsVC: UIViewController {

    @IBOutlet weak var maoView: MKMapView!
    var seleactedLoc: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showHospitalLocation(hospitalLocArray: hospitalsInfo, selectedLoc: seleactedLoc)
//        westSalmiyaHospital()
//        alAhqaqeeHospital()
//        hamadAlsaqerHospital()
    }
    
    func showHospitalLocation(hospitalLocArray: [hospitalLocations], selectedLoc: String){
        var hospital: hospitalLocations = hospitalLocations(hospitalName: "", lon: 0.0, lat: 0.0, subtitle: "")
        for i in 0..<hospitalLocArray.count{
            if hospitalLocArray[i].hospitalName  == selectedLoc {
                hospital = hospitalLocArray[i]
            }
            
        }
        
        
        
        print("hospital", hospital)
        
        let annontation = MKPointAnnotation()
        annontation.coordinate = CLLocationCoordinate2D(latitude: hospital.lat, longitude: hospital.lon)
        annontation.title = hospital.hospitalName
        annontation.subtitle = hospital.subtitle
               maoView.addAnnotation(annontation)
        maoView.mapType = MKMapType.hybrid
               let region = MKCoordinateRegion(center: annontation.coordinate, latitudinalMeters: 250, longitudinalMeters: 250)
               maoView.setRegion(region, animated: true)
        
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
