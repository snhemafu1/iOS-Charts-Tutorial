//
//  ViewController.swift
//  Charts-Tutorial
//
//  Created by Sunita Nhemafuki on 7/22/21.
//  Copyright © 2021 Sunita Nhemafuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayBox: UILabel!
    
    let quote1 = "Hello World"
    let quote2 = "Hola Mundo"
    let quote3 = "Bonjour le monde"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buttonController(_ sender: Any) {
        
        let n = Int.random(in: 1...3)
        
        if n == 1
        {
            displayBox.text = quote1;
        }
        if n == 2
        {
            displayBox.text = quote2;
        }
        if n == 3
        {
            displayBox.text = quote3;
        }
    }
}
    


