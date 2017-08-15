//
//  BarViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 23/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit
import Charts
import CoreGraphics

class BarViewController: UIViewController {

    @IBOutlet weak var barchart: BarChartView!
     var startPoint: CGPoint?
    
    
    var months: [String]!
    var dataEntries: [BarChartDataEntry] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        months  = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
        setChart(dataPoints: months, values: unitsSold)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first {
            startPoint = touch.location(in: view)
            switching()
        print(startPoint)
        }
    }
    func setChart(dataPoints: [String], values: [Double]) {
        
        
        
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let de = BarChartDataEntry()
            de.yValues = values
            
            let dataEntry = BarChartDataEntry(x: Double(i), y: values[i])
            dataEntries.append(dataEntry)
        }
        
        
    let chartDataSet = BarChartDataSet(values: dataEntries, label: "label sold")
        chartDataSet.colors = ChartColorTemplates.colorful()
        
        let chartData = BarChartData(dataSet: chartDataSet)
        barchart.animate(xAxisDuration: 1, yAxisDuration: 1)
barchart.data = chartData
        barchart.isUserInteractionEnabled = false
        barchart.fitBars = true
        
        
}
    func switching() {
        print("ok")
    }
    
    @IBAction func pinchAction(_ sender: UIPinchGestureRecognizer)
    {
        
        
        
        
        
        
    }
    
    
    
    
}
/*
 
 
 //   dataEntries.append(entry)
 // let dataEntry = BarChartDataEntry(x: Double(i), y:c ,
 //print(dataEntry)
 let dataEntry = BarChartDataEntry(x: Double(i), y: Double(values[i]) )
 dataEntries.append(dataEntry)
 // x: Double(i)
 // yValues: values
 
 
 
 
 
 */
