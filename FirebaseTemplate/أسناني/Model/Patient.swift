//
//  Patient.swift
//  Asnani
//
//  Created by Batool Hussain on 7/15/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import Foundation

struct Patient {
    let name : String
    let iD : String
    let age : Int
    let gender : String
    let bloodType : String
    let governorate : String
   
    var  allapp : [app]?
    
    
}


var patientsData : [Patient] = [
    
    Patient(name: "بتول علي إسماعيل", iD: "303013001203", age: 17, gender: "أنثى", bloodType: "B+", governorate: "حولي"),
    
    Patient(name: "الدانة سعد الرشيدي", iD: "303081800277", age: 16, gender: "أنثى", bloodType: "O+", governorate: "الفروانية"),
    
    Patient(name: "علي محمد العلي", iD: "303058545200", age: 16, gender: "ذكر", bloodType: "AB-", governorate: "الجهراء")
    
]
struct app{
    var date : String
    var blood : String
    var isNext : Bool
}
