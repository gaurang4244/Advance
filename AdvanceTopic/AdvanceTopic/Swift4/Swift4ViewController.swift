//
//  Swift4ViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 03/08/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit

class Swift4ViewController: UIViewController  {

    struct Home{
        var name : String
        var people : Int
        init(jason : [String : Any]) {
        name = jason["hm"] as? String ?? ""
            people = jason["peo"] as? Int ?? 0
        }
    }
    let dict : [String : Any] = ["hm" : "gaurang" , "peo" : 100.00]
    
    // in view did load method
    // let h1 = Home(jason: dict)
  // print(h1.name)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if let url = URL(string: "http://cricapi.com/api/matches/GKx7vsWaAVaOKRifj7Lm6OkLBtA2") {
            let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                guard let _ = response else { return }
                guard let data1 = data else { return }
                do
                {
                    if   let jsondata = try? JSONSerialization.jsonObject(with: data1, options: .mutableContainers) as? [String : Any] {
                   // print(jsondata)
                        if  let match = jsondata!["matches"] as? [[String : Any]] {
                print(match)
                            
                            
                        }
                    
                    }
                    
                }
                catch{
                    
                }
                
                
            })
            task.resume()
          //  print(task.progress)
            
            
        }
    }
    struct Data1 : Equatable , Comparable {
        let seconds : Double
        static func <(lhs: Swift4ViewController.Data1, rhs: Swift4ViewController.Data1) -> Bool {
            return lhs.seconds < rhs.seconds
        }
        
        
        static func ==(lhs: Data1, rhs: Data1) -> Bool {
            return lhs.seconds == rhs.seconds
        }
        
    }
    
    

    @IBAction func DisplyAct(_ sender: UIButton)
    {
    print("printing")
        let d1 = Data1(seconds: 100)
        let d2 = Data1(seconds: 200)
        if d1 > d2 {
            print("d1 is high")
        }
        else
        {
            print("d2 is high ")
        }
        
    }
    
    
    
   
   
    

}
// api - http://cricapi.com/api/matches/GKx7vsWaAVaOKRifj7Lm6OkLBtA2
   // print(String(data: data1, encoding: .utf8) )

extension Swift4ViewController {
    
   
    
    
    
    
    
    
    
    
    
}
