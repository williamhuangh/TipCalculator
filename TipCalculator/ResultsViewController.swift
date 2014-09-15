//
//  ResultsViewController.swift
//  TipCalculator
//
//  Created by William Huang on 9/14/14.
//  Copyright (c) 2014 Stanford University. All rights reserved.
//

import UIKit

class ResultsViewController: ViewController {
    
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var total: UILabel!
    
    var tipPercentage = 0.0
    var price = 0.0
    var totalPrice = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.totalPrice = self.price * (1 + self.tipPercentage / 100.0)
        self.total.text = NSString(format: "%.2f", self.totalPrice)
        self.tipAmount.text = NSString(format: "%.2f", self.totalPrice - self.price)
    }
    
}