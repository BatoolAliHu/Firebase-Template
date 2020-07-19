//
//  ScheduleVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit
import EventKit

class ScheduleVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addAppointmentBtn(_ sender: Any) {
        let appointmentStore: EKEventStore = EKEventStore()
        DispatchQueue.main.async() {
            appointmentStore.requestAccess(to: .event)  {(granted, error) in
                if (granted)  &&  (error == nil)
                {
                    print("granted \(granted)")
                    print("error \(error)")
                    let appointment:EKEvent = EKEvent(eventStore: appointmentStore)
                    appointment.title = "add appointment testing title"
                    appointment.startDate = Date()
                    appointment.endDate = Date()
                    appointment.notes = "This is note"
                    appointment.calendar = appointmentStore.defaultCalendarForNewEvents
                    do{
                        try appointmentStore.save(appointment, span: .thisEvent)
                    }catch let error as NSError{
                        print("error : \(error)")
                    }
                    print("save appointment")
                    
                }else{
                    print("error : \(error)")
                }
                
            }
            
            
            
        }
        
        
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


