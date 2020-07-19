//
//  DentistInfoVC.swift
//  FirebaseTemplate
//
//  Created by Batool Hussain on 7/19/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class DentistInfoVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    var selectedsSpecialized: String?
    var specialized = ["", "نعم", "لا"]
    
    @IBOutlet weak var isSpecialized: UITextField!
    @IBOutlet weak var degreeTitle: UITextField!
    @IBOutlet weak var hospital: UITextField!
    @IBOutlet weak var build: UITextField!
    @IBOutlet weak var clinic: UITextField!
    @IBOutlet weak var extensionNumber: UITextField!
    @IBOutlet weak var cV: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPickerView()
        dismissPickerView()
        action()
        // Do any additional setup after loading the view.
    }
    
    
    
    func createPickerView() {
           let pickerView = UIPickerView()
           pickerView.delegate = self
           isSpecialized.inputView = pickerView
    }
    func dismissPickerView() {
       let toolBar = UIToolbar()
       toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
       toolBar.setItems([button], animated: true)
       toolBar.isUserInteractionEnabled = true
       isSpecialized.inputAccessoryView = toolBar
    }
    @objc func action() {
          view.endEditing(true)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return specialized.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return specialized[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    selectedsSpecialized = specialized[row]
    isSpecialized.text = selectedsSpecialized
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
