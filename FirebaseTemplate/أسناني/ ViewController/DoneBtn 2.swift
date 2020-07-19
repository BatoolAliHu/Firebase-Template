//
//  DoneBtn.swift
//  Asnani
//
//  Created by Batool Hussain on 7/14/20.
//  Copyright © 2020 Batool Hussain. All rights reserved.
//

import Foundation
import UIKit

extension UIToolbar {

func ToolbarPiker(mySelect : Selector) -> UIToolbar {

    let toolBar = UIToolbar()

    toolBar.barStyle = UIBarStyle.default
    toolBar.isTranslucent = true
    toolBar.tintColor = UIColor.black
    toolBar.sizeToFit()

    let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: mySelect)
//    let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)

    toolBar.setItems([doneButton], animated: false)
    toolBar.isUserInteractionEnabled = true

    return toolBar
}

}
