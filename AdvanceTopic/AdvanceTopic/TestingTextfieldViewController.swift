//
//  TestingTextfieldViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 27/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit

class TestingTextfieldViewController: UIViewController , UITextFieldDelegate {

    
    @IBOutlet weak var nametext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    nametext.delegate = self
       
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("begin")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("end edititng")
        return true
    }
    
    
}
