//
//  Maps.swift
//  Asnani
//
//  Created by Batool Hussain on 7/16/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import Foundation

struct Maps {
    let governorate: String
    let hospital1: String
    let hospital2: String
    
}


var map : [Maps] = [
    Maps(governorate: "حولي", hospital1: "مركز السالمية الغربي", hospital2: "مركز محمود حاجي حيدر"),
    Maps(governorate: "العاصمة", hospital1: "مركز الإحقاقي", hospital2: "مركز حمد الصقر"),
    Maps(governorate: "الفروانية", hospital1: "مركز عبدالله مبارك", hospital2: "مركز الفروانية الغربي"),
    Maps(governorate: "الأحمدي", hospital1: "مركز القرين التخصصي", hospital2: "مركز الفحيحيل التخصصي"),
    Maps(governorate: "الجهراء", hospital1: "مركز القصر", hospital2: "مركز الصليبية الجنوبي")   
]

struct hospitalLocations {
    var hospitalName: String
    var lon: Double
    var lat: Double
    var subtitle: String
}


var hospitalsInfo: [hospitalLocations] = [
    hospitalLocations(hospitalName: "مركز محمود حاجي حيدر", lon: 48.0328525, lat: 29.3160753, subtitle: "طوارئ محافظة حولي"),
    hospitalLocations(hospitalName: "مركز السالمية الغربي", lon: 48.0504375, lat: 29.3312366, subtitle: "طوارئ محافظة حولي"),
    hospitalLocations(hospitalName: "مركز الإحقاقي", lon: 48.011933, lat: 29.3617367, subtitle: "طوارئ محافظة العاصمة"),
    hospitalLocations(hospitalName: "مركز حمد الصقر", lon: 47.9862488, lat: 29.3331551, subtitle: "طوارئ محافظة العاصمة"),
    hospitalLocations(hospitalName: "مركز الفحيحيل التخصصي", lon: 48.1163643, lat: 29.0805769, subtitle: "طوارئ محافظة الأحمدي"),
    hospitalLocations(hospitalName: "مركز القرين التخصصي", lon: 48.0754155, lat: 29.201629, subtitle: "طوارئ محافظة الأحمدي"),
    hospitalLocations(hospitalName: "مركز القصر", lon: 47.6851288, lat: 29.3497471, subtitle: "طوارئ محافظة الجهراء"),
    hospitalLocations(hospitalName: "مركز الصليبية الجنوبي", lon: 47.832799, lat: 29.2780563, subtitle: "طوارئ محافظة الجهراء"),
    hospitalLocations(hospitalName: "مركز الرقة", lon: 48.1004378, lat: 29.1456631, subtitle: "طوارئ محافظة مبارك الكبير"),
    hospitalLocations(hospitalName: "مركز عبدالله المبارك", lon: 47.8936003, lat: 29.2417245, subtitle: "طوارئ محافظة مبارك الكبير"),
    hospitalLocations(hospitalName: "مركز الفروانيه الغربي", lon: 47.9516831, lat: 29.2745663, subtitle: "طوارئ محافظة الفروانية"),
    hospitalLocations(hospitalName: "مركز عبدالله المبارك", lon: 47.8936003, lat: 29.2417245, subtitle: "طوارئ محافظة الفروانية")
]
