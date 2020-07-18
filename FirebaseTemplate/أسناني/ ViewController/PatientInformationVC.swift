//
//  PatientInformationVC.swift
//  أسناني
//
//  Created by Batool Hussain on 7/13/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import UIKit

class PatientInformationVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var birthDateTextField: UITextField!
    @IBOutlet weak var bloodTypeTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var governorateTextField: UITextField!
    @IBOutlet weak var areaTextField: UITextField!
   
    
    
    let datePicker = UIDatePicker()
    var bloodTypePickerView = UIPickerView()
    var genderPickerView = UIPickerView()
    var governoratePickerView = UIPickerView()
    var areaPickerView = UIPickerView()
    
    
    let governentDic = [governorate[0] : hawaliArray,
    governorate[1] : hawaliArray,
    governorate[2] : capitalArray,
    governorate[3] : jahraArray,
    governorate[4] : mubarakAlkabeerArray,
    governorate[5] : farwaniyaArray,
    governorate[6] : ahmadiArray,
    ]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        placeholders()
        aignments()
        tags()
        
        
   
       
        delegate()

        inputs()
        
        //create DatePicker
        createDatePicker()
        
        //you need to do it
        areaPicker()
        
    }
    
    func placeholders(){
        bloodTypeTextField.placeholder = "فصيلة الدم"
        genderTextField.placeholder = "الجنس"
        governorateTextField.placeholder = "المحافظة"
        areaTextField.placeholder = "المنطقة"
    }
    
    func aignments(){
        bloodTypeTextField.textAlignment =  .center
        genderTextField.textAlignment =  .center
        governorateTextField.textAlignment =  .center
        areaTextField.textAlignment =  .center
    }
    
    func tags(){
        bloodTypePickerView.tag = 1
        genderPickerView.tag = 2
        governoratePickerView.tag = 3
        areaPickerView.tag = 4
    }

    
    func delegate() {
        bloodTypePickerView.delegate = self
        bloodTypePickerView.dataSource = self
        genderPickerView.delegate = self
        genderPickerView.dataSource = self
        governoratePickerView.delegate = self
        governoratePickerView.dataSource = self
        areaPickerView.delegate = self
        areaPickerView.dataSource = self
    }
    
    func inputs(){
        birthDateTextField.inputView = datePicker
        bloodTypeTextField.inputView = bloodTypePickerView
        genderTextField.inputView = genderPickerView
        governorateTextField.inputView = governoratePickerView
        areaTextField.inputView = areaPickerView
        
        
    }
    
    

    func createDatePicker(){
        
        
        datePicker.datePickerMode = .date
        
      
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
       
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(self.donePressed))
        toolbar.setItems([doneBtn], animated: true)
        // toolbar.isUserInteractionEnabled = true
        
        
        let toolbar2 = UIToolbar()
               toolbar2.sizeToFit()
               
              
               let doneBtn2 = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(self.donePressed2))
               toolbar2.setItems([doneBtn2], animated: true)
               // toolbar.isUserInteractionEnabled = true
               
        
        birthDateTextField.inputAccessoryView = toolbar
        areaTextField.inputAccessoryView = toolbar2
        genderTextField.inputAccessoryView = toolbar2
        governorateTextField.inputAccessoryView = toolbar2
        bloodTypeTextField.inputAccessoryView = toolbar2
        
        //assign date picker to the text field
        birthDateTextField.inputView = datePicker
        
    }
    
    
    @objc func donePressed2(){
         self.view.endEditing(true)
    }
    @objc func donePressed(){
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        self.birthDateTextField.text = formatter.string(from: datePicker.date)
        
        //  birthDateTextField.text = "\(datePicker.date)"
        self.view.endEditing(true)
        self.birthDateTextField.resignFirstResponder()
    }
    
    
    func areaPicker(){
        let area = [ governoratePickerView : "حولي" , areaPickerView : hawaliArray] as [UIPickerView : Any]
    }
    
    
    
    @IBAction func next(_ sender: UIButton) {
        if
            birthDateTextField.text == "" ||
                bloodTypeTextField.text == "" ||
                genderTextField.text == "" ||
                governorateTextField.text == ""
                || areaTextField.text == ""
        {
            
            let alertControllar = UIAlertController(title: nil, message: "أكمل البيانات المطلوبة", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "أكمل", style: .default) { (alert) in }
            
            alertControllar.addAction(restartAction)
            
            present(alertControllar, animated: true, completion: nil)
            
        }else {
            String.popAlert(presenter: self , Title: "", message: "تم التسجيل بنجاح" , when: 3 , firsthandler: {_ in
                // performSegue(withIdentifier: "Next", sender: nil)
                
            }, secondhandler: {
                
                self.performSegue(withIdentifier: "Next", sender: nil)
                
            })
        }
        //performSegue(withIdentifier: "Next", sender: nil)
    }
    
    @objc func dismissPicker() {
        
        view.endEditing(true)
        
    }
    
}



extension PatientInformationVC: UIPickerViewDataSource, UIPickerViewDelegate{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 1:
            return bloodType.count
        case 2:
            return gender.count
        case 3:
            return governorate.count
        case 4:
            return governentDic[governorateTextField.text!]!.count
        default:
            return 1
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return bloodType[row]
        case 2:
            return gender[row]
        case 3:
            return governorate[row]
        case 4:
            return governentDic[governorateTextField.text!]?[row] ?? ""
            
        default:
            return "Data not found"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        
        
        switch pickerView.tag {
        case 1:
            bloodTypeTextField.text = bloodType[row]
//            bloodTypeTextField.inputAccessoryView = toolbar
            
            //bloodTypeTextField.resignFirstResponder()
            
        case 2:
            genderTextField.text = gender[row]
//            genderTextField.inputAccessoryView = toolbar
            
        //genderTextField.resignFirstResponder()
        case 3:
            governorateTextField.text = governorate[row]
//            governorateTextField.inputAccessoryView = toolbar
            
        case 4:
            areaTextField.text = governentDic[governorateTextField.text!]?[row] ?? ""
            //governorateTextField.resignFirstResponder()
            
            
            if row == 1 {
                //areaPickerView == hawaliArray.
            }
            
        default:
            return
        }
    }
    
}


extension String {
    
    static func popAlert(presenter: UIViewController, Title: String , message: String, when: Double = 0 ,firsthandler: @escaping (UIAlertAction) -> (Void) = {_ in } , secondhandler: @escaping () -> (Void) = { })
    {
        let alertController = UIAlertController(title: Title, message: message, preferredStyle: .alert)
        //        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: firsthandler)
        //        alertController.addAction(okAction)
        presenter.present(alertController, animated: true)
        if(when != 0){
            var whenn = DispatchTime.now() + when
            DispatchQueue.main.asyncAfter(deadline: whenn){
                alertController.dismiss(animated: true, completion: secondhandler)
            }
        }
    }
}







