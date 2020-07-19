//
//  ChoiceDentistCV.swift
//  Asnani
//
//  Created by Batool Hussain on 7/17/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class ChoiceDentistCV: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var details: [Dentist]!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return details.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DentistCell
        cell.name1.text = details[indexPath.row].name
        cell.name2.text = details[indexPath.row].degreeTitle
        cell.name3.text = details[indexPath.row].hospital
        cell.name4.text = details[indexPath.row].building
        cell.name5.text = details[indexPath.row].clinc
        cell.name6.text = details[indexPath.row].extensionNumber
        cell.name7.text = details[indexPath.row].cV
        
        return cell
        
    }
    
    
    @IBOutlet weak var dentistTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(details)
        //tableView.dataSourse = self
        // Do any additional setup after loading the view.
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
