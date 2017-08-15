//
//  ChartsViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 22/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit
import CoreGraphics
import Charts

class ChartsViewController: UIViewController {
    @IBOutlet weak var piechart: PieChartView!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateChartData()
        
        
        
        
        
    }
    
     func updateChartData()
     {
        let months  = ["Jan", "Feb", "Mar", "Apr", "May", "Jun","july"]
       let unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0]
        
        var entries = [PieChartDataEntry]()
        
        for (index, value) in unitsSold.enumerated() {
            let entry = PieChartDataEntry()
            entry.y = value
            entry.label = months[index]
            entries.append( entry)
        }
        
         let set = PieChartDataSet( values: entries, label: "Pie Chart")
        var colors: [UIColor] = []
        
        for _ in 0..<unitsSold.count {
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        set.colors = colors
        let data = PieChartData(dataSet: set)
       piechart.data = data
        //chart.noDataText = "No data available"
        // user interaction
 piechart.isUserInteractionEnabled = true
        piechart.animate(xAxisDuration: 1)
        
        
    }
    
    
    
    
    
}
/*
   //  piechart.animate(yAxisDuration: 1)
  //    let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
 
 
 //   let piechartitle = PieChartDataEntry(value: 10.0, data: "hello" as AnyObject)
 //  print(piechartitle)
  // piechart.data = PieChartData(#imageLiteral(resourceName: "img2"))
   //data.addDataSet(PieChartDataSet(dataPoints[i]))
  //  let pieChartData = PieChartData(xVals: dataPoints, dataSet: pieChartDataSet)
  // let data = PieChartData()
 
 
 */

/*
 
 
 func setChart(dataPoints: [String], values: [Double]) {
 
 var dataEntries: [ChartDataEntry] = []
 
 
 
 
 
 for i in 0..<dataPoints.count {
 
 
 
 let dataEntry = ChartDataEntry(x: Double(i), y: values[i])
 dataEntries.append(dataEntry)
 
 print(dataEntry)
 }
 
 let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "Units Sold")
 
 
 let pieChartData = PieChartData(dataSet: pieChartDataSet)
 
 
 
 
 piechart.data = pieChartData
 
 var colors: [UIColor] = []
 
 for i in 0..<dataPoints.count {
 print(i)
 let red = Double(arc4random_uniform(256))
 let green = Double(arc4random_uniform(256))
 let blue = Double(arc4random_uniform(256))
 
 let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
 colors.append(color)
 }
 
 
 
 let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
 let unitsSold = [20.0, 40.0, 60.0, 30.0, 120.0, 160.0]
 
 setChart(dataPoints: months, values: unitsSold)
 
 
 piechart.animate(xAxisDuration: 1)
 
 pieChartDataSet.colors = colors
 
 
 let lineChartDataSet = LineChartDataSet(values: dataEntries, label: "Units Sold")
 
 
 let lineChartData = LineChartData(dataSet: lineChartDataSet)
 linechart.data = lineChartData
 
 }
 
 
 */
