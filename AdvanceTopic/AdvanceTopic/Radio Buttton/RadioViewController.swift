//
//  RadioViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 04/08/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit
import DLRadioButton

class RadioViewController: UIViewController {

    
    @IBOutlet weak var btn1: DLRadioButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       btn1.endEditing(true)
        view.layoutIfNeeded()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Btn1Act(_ sender: DLRadioButton)
    {
    print("running")
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
