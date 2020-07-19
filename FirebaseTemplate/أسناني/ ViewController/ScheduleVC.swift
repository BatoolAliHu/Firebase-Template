//
//  ScheduleVC.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit
import EventKit
import EventKitUI

class ScheduleVC: UIViewController, EKEventEditViewDelegate {
    
    func eventEditViewController(_ controller: EKEventEditViewController, didCompleteWith action: EKEventEditViewAction) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    let eventStore = EKEventStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func checkPermission(){
        switch EKEventStore.authorizationStatus(for: .event){
        case .authorized:
            print("Yaaay!")
            self.createReminder(name: "Batool")
        case .notDetermined:
            print("Not determined")
            eventStore.requestAccess(to: .event
                , completion: { (isAllowed , error) in
                    
                    if let error = error {
                        print(error.localizedDescription)
                    }else{
                        if isAllowed {
                            print("Alllooooweeeeddddd")
                            self.createReminder(name: "Batool")
                        }
                    }
            })
        case .restricted , .denied:
            print("تستهبل ؟")
        }
    }
   

    func createReminder(name: String){
        DispatchQueue.main.async {
                let eventStore = EKEventStore()
                let event = EKEvent(eventStore: eventStore)
                let endDate = Date.init(timeInterval: 3600 , since: Date())
                event.calendar = eventStore.defaultCalendarForNewEvents
                event.title = name
                event.startDate = Date()
                event.endDate = endDate
            let eventViewController: EKEventEditViewController = EKEventEditViewController()
            eventViewController.event = event
            eventViewController.eventStore = eventStore
            eventViewController.editViewDelegate = self
            self.present(eventViewController, animated: true, completion: nil)
//            do {
//                try eventStore.save(event, span: .thisEvent)
//            }catch {
//                print("saving event error: \(error)")
//            }

        }

    }

    @IBAction func addAppointmentBtn(_ sender: Any) {
        checkPermission()
   //     createReminder()
    /*    let appointmentStore: EKEventStore = EKEventStore()
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
        */
        
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


