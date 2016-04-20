//
//  SecondViewController.swift
//  To Do List Main
//
//  Created by Steven Yang on 4/18/16.
//  Copyright © 2016 Yato. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func submitButton(sender: AnyObject) {
        let textDictionary = ["title": "\(textField.text!)", "overview": "\(textView.text!)"]
        toDoList.append(textDictionary)
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }


    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

