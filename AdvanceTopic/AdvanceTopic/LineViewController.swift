//
//  LineViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 23/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit
import Charts

class LineViewController: UIViewController {
    
    @IBOutlet weak var linechart: LineChartView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let months = [12.0,12,34,56,67,89,56]
        var chardataentry : [ChartDataEntry] = []
        var dataEntries: [LineChartDataSet] = []
        
        for i in 0..<months.count {
            
           let entry = ChartDataEntry()
            entry.x = months[i]
            
           chardataentry.append(entry)
            
        }
        
        let lineChartDataSet = LineChartDataSet(values: chardataentry, label: "Units Sold")
        let lineChartData = LineChartData( dataSet: lineChartDataSet)
        linechart.data = lineChartData
        
        
        
        
        
        
        
        
    }

    
    

    
    
    
    
    

}
