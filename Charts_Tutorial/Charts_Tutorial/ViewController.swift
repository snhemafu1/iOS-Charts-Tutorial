//
//  ViewController.swift
//  Charts_Tutorial
//
//  Created by Sunita Nhemafuki on 7/25/21.
//  Copyright © 2021 Sunita Nhemafuki. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {
    @IBOutlet weak var LineChartBox: LineChartView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let data = [1, 3, 5, 7, 9, 10, 8]
        graphLineChart(dataArray: data)
    }
    func graphLineChart(dataArray: [Int]) {
        // Make linechartBox size have width and height both equal to width of screen
        LineChartBox.frame = CGRect(x: 0, y:0,
                                    width: self.view.frame.size.width,
                                    height: self.view.frame.size.width / 2)
        
        //Make LineChartBox center to be horizontally centered, but
        // offset towards the top of the screen
        LineChartBox.center.x = self.view.center.x
        LineChartBox.center.y = self.view.center.y - 240
        
        //Settings when chart has no data
        LineChartBox.noDataText = "No data avaiable"
        LineChartBox.noDataTextColor = UIColor.black
        
        //Initialize Array that will eventually be displayed on the graph
        var entries = [ChartDataEntry]()

        //For every element in given dataset
        //Set the X and Y coordinates in a data chart entry and add to the entire list
        for i in 0..<dataArray.count {
            let value = ChartDataEntry(x: Double(i), y: Double(dataArray[i]))
                entries.append(value)
        }
        
        //Use the entries object and a label string to make a LineChartDataSet object
        let dataSet = LineChartDataSet(entries: entries, label: "Line Chart")
        
        //Customize graph settings to your liking
        dataSet.colors = ChartColorTemplates.joyful()
        
        //Make object that will be added to the chart and set it to the variable in the Storyboard
        let data = LineChartData(dataSet: dataSet)
        LineChartBox.data = data
        
        //Add settings for the chartBox
        LineChartBox.chartDescription?.text = "Pi Values"
        
        //Animations
        LineChartBox.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
    }
}

