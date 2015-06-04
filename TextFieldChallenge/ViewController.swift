//
//  ViewController.swift
//  TextFieldChallenge
//
//  Created by Sarah Howe on 5/31/15.
//  Copyright (c) 2015 SarahHowe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //outlets
    @IBOutlet weak var zipCodeField: UITextField!
    @IBOutlet weak var currencyField: UITextField!
    @IBOutlet weak var toggleTypeField: UITextField!
    @IBOutlet weak var typeSwitch: UISwitch!
    
    //text field delegate objects
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let currencyDelegate = CurrencyTextFieldDelegate()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the text field delegates
        self.zipCodeField.delegate = zipCodeDelegate
        self.currencyField.delegate = currencyDelegate
        self.toggleTypeField.delegate = self
        
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if(typeSwitch.on)
        {
            return true
        }
        
        return false
    }

}

