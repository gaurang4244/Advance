//
//  LineGraphViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 23/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
// line charts

import UIKit
import Charts

class LineGraphViewController: UIViewController {
    
    @IBOutlet weak var linechart: LineChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
updateChartData()
        
    }
     func updateChartData()  {
        let money = [1,5,3,5,8,9,20]
        let months  = ["Jan", "Feb", "Mar", "Apr", "May", "Jun","july"]
        
       var dataEntries: [ChartDataEntry] = []
        
        var entries = [LineChartDataSet]()
        
        let entry = LineChartDataSet()
        for i in 0..<money.count {
            
            entry.label = months[i]
           // entry.values = money[i]
          entries.append(entry)
            
            let dataEntry = ChartDataEntry(x: Double(i), y: Double(money[i]))
             dataEntries.append(dataEntry)
            entry.values = dataEntries
            print(dataEntry)
            
        }
        
        
    let cv = entry.values
        print(cv)
        let lineChartDataSet = LineChartDataSet(values: cv, label: "Units Sold")
        let lineChartData = LineChartData( dataSet: lineChartDataSet)
        linechart.data = lineChartData
        
        
    }

    

}
