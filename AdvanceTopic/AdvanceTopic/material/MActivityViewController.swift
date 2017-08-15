//
//  MActivityViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 28/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialActivityIndicator

class MActivityViewController: UIViewController {
   var gameTimer: Timer!
    
    var activityIndicator : MDCActivityIndicator!
    override func viewDidLoad() {
        super.viewDidLoad()
         activityIndicator = MDCActivityIndicator()
        activityIndicator.center = view.center
       // activityIndicator.indicatorMode = .determinate
      //  activityIndicator.progress = 0.5
        view.addSubview(activityIndicator)
        
        gameTimer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(runTimedCode), userInfo: nil, repeats: true)
        
    }
    @objc func runTimedCode() {
        activityIndicator.startAnimating()
    }

   
    

    
}
