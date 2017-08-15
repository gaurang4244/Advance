//
//  ActivityViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 22/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }

    @IBAction func btnAct(_ sender: UIButton)
    {
        UIView.animate(withDuration: 1.2, animations: {
            self.view1.transform = CGAffineTransform(scaleX: 0.01, y: 0.8)
            self.view1.backgroundColor = UIColor.orange
            self.lbl1.text = "Welcome"
            self.btn1.transform  = CGAffineTransform(rotationAngle: CGFloat(-90))
            self.btn1.setTitle("pressed", for: .normal)
            self.btn1.backgroundColor = UIColor.white
            self.view2.transform = CGAffineTransform(translationX: 100, y: 0)
            self.view2.alpha = 1
            
        }, completion: {_ in
            UIView.animate(withDuration: 1.2) {
                self.view1.transform = CGAffineTransform.identity
                self.view1.backgroundColor = UIColor.cyan
                self.lbl1.text = "Hello There"
                self.btn1.transform = CGAffineTransform.identity
                self.btn1.titleLabel?.text = "release"
                self.btn1.backgroundColor = UIColor.green
                self.view2.transform = CGAffineTransform.identity
                self.view2.alpha = 0
            }
            
            
        })
            
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 1, animations: {
            self.view3.transform = CGAffineTransform(scaleX: 10 , y: 10)
        }) { _ in
            
            UIView.animate(withDuration: 1) {
            self.view3.transform = CGAffineTransform.identity
            }
        }
    }
        
    

}

    
 
    

