//
//  MaterialViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 28/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit
//import MaterialComponents
import MaterialComponents.MaterialButtons



class MaterialViewController: UIViewController {

    @IBOutlet weak var bt1: MDCButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let raiseButton = MDCRaisedButton.init()
        raiseButton.setTitle("Raised Button", for: .normal)
        //raiseButton.center = view.center
        raiseButton.frame = CGRect(x: 50, y: 100, width: 100, height: 40)
        
        raiseButton.addTarget(self, action: #selector(tapped(sender:)), for: .touchUpInside)
        self.view.addSubview(raiseButton);
      
    }

    @objc func tapped(sender: UIButton!){
        print("button tapped")
    }
   
    @IBAction func btnAct(_ sender: MDCButton)
    {
    print("ok")
    }
    

    
}
