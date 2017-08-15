//
//  AdvanceAnimationViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 04/08/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit

class AdvanceAnimationViewController: UIViewController {

    
    @IBOutlet weak var view1: UIView!
    
    
    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
view2.layer.cornerRadius = 80
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    @IBAction func animateAction(_ sender: UIButton)
    {
       //
        
    }
    
    

}
/*
 
 UIView.animate(withDuration: 0.9, animations: {
 self.view1.frame = self.view1.frame.offsetBy(dx: 300, dy: 0)
 }) { (_) in
 self.view1.frame = self.view1.frame.offsetBy(dx: -300, dy: 0)
 }
 
 let animator = UIViewPropertyAnimator(duration: 0.9, curve: .easeIn) {
 self.view1.frame = self.view1.frame.offsetBy(dx: 300, dy: 0)
 self.view2.layer.cornerRadius = 10
 }
 
 animator.startAnimation()
 
 
 
 
 */
