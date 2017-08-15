//
//  FirstViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 21/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var labels: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressenAct(_ sender: UIButton)
    {
        for lbl in labels {
            lbl.text = "hello"
        }
        
        
    }
    
}
