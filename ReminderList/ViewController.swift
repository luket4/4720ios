//
//  ViewController.swift
//  ReminderList
//
//  Created by Lucas Tate on 2/22/16.
//  Copyright © 2016 Uva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate{
    //Mark: var
    
    @IBOutlet weak var textReminder: UITextField!
    @IBOutlet weak var reminderLabel: UILabel!
  
    @IBOutlet weak var descriptionLabel: UILabel!

    @IBOutlet weak var descriptionText: UITextView!

    
    @IBOutlet weak var date: UIDatePicker!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //handle the text field's user input through delegate callbacks
        textReminder.delegate = self
        descriptionText.delegate = self
        
    }
    
    
    //mark: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField){
        reminderLabel.text = textField.text
    
        
    }
    
 
    
    func textViewDidEndEditing(textView: UITextView) {
        descriptionLabel.text = textView.text

    }
    
    
    //mark: actions

    @IBAction func setReminder(sender: UIButton) {
                var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        
        dateLabel.text = dateFormatter.stringFromDate(date.date)
        
    }
}

