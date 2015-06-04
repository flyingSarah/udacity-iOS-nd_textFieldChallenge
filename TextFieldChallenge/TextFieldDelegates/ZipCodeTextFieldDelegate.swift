//
//  ZipCodeTextFieldDelegate.swift
//  TextFieldChallenge
//
//  Created by Sarah Howe on 5/31/15.
//  Copyright (c) 2015 SarahHowe. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText: NSString = textField.text
        var isNumber: Bool = false
        var isBackspace: Bool = false
        
        //find out if the text field is a number
        if(string.toInt() != nil)
        {
            isNumber = true
        }
        
        //find out if the latest character was a backspace
        let scalars = string.unicodeScalars
        if(scalars[scalars.startIndex].value == 65533)
        {
            isBackspace = true
        }
        
        //limit to 5 characters and numbers only - allow backspaces
        if((newText.length < 5 && isNumber) || isBackspace)
        {
            return true
        }
        
        return false
    }
}