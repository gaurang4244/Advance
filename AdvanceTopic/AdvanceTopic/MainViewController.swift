//
//  MainViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 24/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var imgview: UIImageView!
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var widthview1: NSLayoutConstraint!
    
    @IBOutlet weak var leadingview1: NSLayoutConstraint!
    
    
    var condition = true
    var lead : CGFloat = 0
    var width1 : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for btn in buttons {
            btn.layer.cornerRadius = 10
            btn.clipsToBounds = true 
        }
        imgview.layer.cornerRadius = 35
        imgview.clipsToBounds = true
        let width = self.view.frame.size.width
        print(width)
        
        let wd = width / 2
        width1 = wd
      widthview1.constant =  CGFloat(wd)
        leadingview1.constant =  -wd
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func leftAct(_ sender: UIButton)
    {
        if condition {
             
            UIView.animate(withDuration: 0.5, animations: {
                self.view1.transform = CGAffineTransform(translationX: self.width1, y: 0)
            }, completion: nil)
            
            
        condition = false
        }
        else
        {
            
            UIView.animate(withDuration: 0.5, animations: {
                self.view1.transform = CGAffineTransform(translationX: -self.width1, y: 0)
            }, completion: nil)
            condition  = true
        }
    }
    
    @IBAction func btnActs(_ sender: UIButton)
    {
        let tag = sender.tag
        
        switch tag {
        case buttons[0].tag:              // one
            print("zero")
             case buttons[1].tag:
            print("one")
             case buttons[2].tag:
            print("two")
             case buttons[3].tag:
            print("three")
             case buttons[4].tag:
            print("four")
             case buttons[5].tag:
            print("five")
        default:
            print("d")
        }
        
        
        
        
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch  = touches.first {
            let location = touch.location(in: self.view)
            print(location)
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
             let tp = touch.location(in: self.view)
             let tpx = tp.x
                
            
            
            
        }
    
    
}
}
