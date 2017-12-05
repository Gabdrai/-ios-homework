//
//  FormEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Gabriel Drai on 30/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit

class FormEmojiViewController: BaseViewController,UITextFieldDelegate {
    
    @IBOutlet weak var textFieldEmoji: LinkedTextField!
    @IBOutlet weak var textFieldUsage: LinkedTextField!
    @IBOutlet weak var textFieldDescription: LinkedTextField!
    
    
    @IBAction func cancel(_ sender: Any?)
    {
        self.dismiss(animated: true) {
            
        }
    }
    
    @IBAction func save(_ sender: Any?)
    {
        // to be over written
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if textField == self.textFieldEmoji && string != "" // if deleting
        {
            if let v = textField.text?.count, v >= 1
            {
                return false
            }
        }
        
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let linkedTextField : LinkedTextField = textField as? LinkedTextField
        {
            if( linkedTextField.nextField != nil )
            {
                linkedTextField.nextField?.becomeFirstResponder()
            }
            else
            {
                linkedTextField.resignFirstResponder()
                self.save(nil)
            }
        }
        
        return true
    }
}

