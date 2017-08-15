//
//  ButtonViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 21/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {
    
    @IBOutlet var starbuttons: [UIButton]!
    var arrayTags = [Int]()
    var count0 = true
    var count1 = true
     var count2 = true
     var count3 = true
     var count4 = true
     var count5 = true
     var count6 = true
     var count7 = true
     var count8 = true
     var count9 = true
     var count10 = true
     var count11 = true
     var count12 = true
     var count13 = true
     var count14 = true
     var count15 = true
     var count16 = true
     var count17 = true
     var count18 = true
     var count19 = true
     var count20 = true
    override func viewDidLoad() {
        super.viewDidLoad()
  print(starbuttons.count)
        
    }
    
    @IBAction func btnAct(_ sender: UIButton)
    {
        let tag = sender.tag
        
        func changing(c1 : Bool , t1 : Int ) {
            let gt = starbuttons[t1-1].tag
            if c1 {
                 starbuttons[t1-1].backgroundColor = UIColor.black
                arrayTags.append(gt)
                
            }
            else{
                 starbuttons[t1-1].backgroundColor = UIColor.white
                let ind = arrayTags.index(of: gt)
                arrayTags.remove(at: ind!)
            }
        }
        switch tag {
        case starbuttons[0].tag:                  // tag = 1
            print("0")
            if count0 {
            changing(c1: count0, t1: tag)
                count0 = false
            }
            else{
                changing(c1: count0, t1: tag)
                count0 = true
            }
            
             case starbuttons[1].tag:
             print("1")
             if count1 {
                changing(c1: count1, t1: tag)
                count1 = false
             }
             else{
                changing(c1: count1, t1: tag)
                count1 = true
             }
             
             case starbuttons[2].tag:
             print("2")
             if count2 {
                changing(c1: count2, t1: tag)
                count2 = false
             }
             else{
                changing(c1: count2, t1: tag)
                count2 = true
            }
             case starbuttons[3].tag:
             print("3")
            
             if count3 {
                changing(c1: count3, t1: tag)
                count3 = false
             }
             else{
                changing(c1: count3, t1: tag)
                count3 = true
            }
             case starbuttons[4].tag:
             print("4")
             if count4 {
                changing(c1: count4, t1: tag)
                count4 = false
             }
             else{
                changing(c1: count4, t1: tag)
                count4 = true
            }
             case starbuttons[5].tag:
             print("5")
             if count5 {
                changing(c1: count5, t1: tag)
                count5 = false
             }
             else{
                changing(c1: count5, t1: tag)
                count5 = true
            }
            
            
             case starbuttons[6].tag:
             print("6")
             if count6 {
                changing(c1: count6, t1: tag)
                count6 = false
             }
             else{
                changing(c1: count6, t1: tag)
                count6 = true
            }
            
            
            
             case starbuttons[7].tag:
             print("7")
             if count7 {
                changing(c1: count7, t1: tag)
                count7 = false
             }
             else{
                changing(c1: count7, t1: tag)
                count7 = true
            }
            
             case starbuttons[8].tag:
             print("8")
             if count8 {
                changing(c1: count8, t1: tag)
                count8 = false
             }
             else{
                changing(c1: count8, t1: tag)
                count8 = true
            }
            
             case starbuttons[9].tag:
             print("9")
             if count9 {
                changing(c1: count9, t1: tag)
                count9 = false
             }
             else{
                changing(c1: count9, t1: tag)
                count9 = true
            }
            
             case starbuttons[10].tag:
             print("10")
             if count10 {
                changing(c1: count10, t1: tag)
                count10 = false
             }
             else{
                changing(c1: count10, t1: tag)
                count10 = true
            }
            
             case starbuttons[11].tag:
             print("11")
             if count11 {
                changing(c1: count11, t1: tag)
                count11 = false
             }
             else{
                changing(c1: count11, t1: tag)
                count11 = true
            }
            
             case starbuttons[12].tag:
             print("12")
             if count12 {
                changing(c1: count12, t1: tag)
                count12 = false
             }
             else{
                changing(c1: count12, t1: tag)
                count12 = true
            }
            
             case starbuttons[13].tag:
             print("13")
             if count13 {
                changing(c1: count13, t1: tag)
                count13 = false
             }
             else{
                changing(c1: count13, t1: tag)
                count13 = true
            }
            
             case starbuttons[14].tag:
             print("14")
             if count14 {
                changing(c1: count14, t1: tag)
                count14 = false
             }
             else{
                changing(c1: count14, t1: tag)
                count14 = true
            }
            
             case starbuttons[15].tag:
             print("15")
             if count15 {
                changing(c1: count15, t1: tag)
                count15 = false
             }
             else{
                changing(c1: count15, t1: tag)
                count15 = true
            }
            
             case starbuttons[16].tag:
             print("16")
             if count16 {
                changing(c1: count16, t1: tag)
                count16 = false
             }
             else{
                changing(c1: count16, t1: tag)
                count16 = true
            }
            
             case starbuttons[17].tag:
             print("17")
             if count17 {
                changing(c1: count17, t1: tag)
                count17 = false
             }
             else{
                changing(c1: count17, t1: tag)
                count17 = true
            }
            
             case starbuttons[18].tag:
             print("18")
             if count18 {
                changing(c1: count18, t1: tag)
                count18 = false
             }
             else{
                changing(c1: count18, t1: tag)
                count18 = true
            }
            
             case starbuttons[19].tag:
             print("19")
             if count19 {
                changing(c1: count19, t1: tag)
                count19 = false
             }
             else{
                changing(c1: count19, t1: tag)
                count19 = true
            }
            
             case starbuttons[20].tag:
             print("20")
             if count20 {
                changing(c1: count20, t1: tag)
                count20 = false
             }
             else{
                changing(c1: count20, t1: tag)
                count20 = true
            }
            
        default: break
            print("d")
        }
        
        
        }

    
    @IBAction func showAct(_ sender: UIButton)
    {
        
        
        print(arrayTags)
        
    }
    
    
    
    
}
/*
 for btn in starbuttons {
 if btn.tag <= tag {
 btn.setTitle(" ⭐", for: .normal)
 }
 else {
 btn.setTitle("✩", for: .normal)
 }
 
 //
 
 for btn in starbuttons {
 
 func switching(t1 : Int) {
 if count {
 btn.backgroundColor = UIColor .black
 count = false
 } else {
 btn.backgroundColor = UIColor.white
 count = true
 }
 
 }
 if tag == btn.tag {
 //btn.backgroundColor = UIColor.black
 switching(t1: tag)
 
 }
 else {
 
 // btn.backgroundColor = UIColor.white
 }
 }
 
 
 
 */
