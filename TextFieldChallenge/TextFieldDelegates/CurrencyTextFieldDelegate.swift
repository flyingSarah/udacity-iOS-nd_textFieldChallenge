//
//  CurrencyTextFieldDelegate.swift
//  TextFieldChallenge
//
//  Created by Sarah Howe on 5/31/15.
//  Copyright (c) 2015 SarahHowe. All rights reserved.
//

import Foundation
import UIKit

class CurrencyTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText: NSString = textField.text
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        //transforming the newText into a cent value
        newText = newText.stringByReplacingOccurrencesOfString(".", withString: "")
        newText = newText.stringByReplacingOccurrencesOfString("$", withString: "")
        newText = newText.stringByReplacingOccurrencesOfString(",", withString: "")
        
        var newTextAsCents = newText.doubleValue
        
        //format the cents using a currency formatter
        let currencyFormatter = NSNumberFormatter()
        currencyFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        
        var newCurrencyString = currencyFormatter.stringFromNumber(newTextAsCents / 100)
        
        textField.text = newCurrencyString
        
        return false
    }
}