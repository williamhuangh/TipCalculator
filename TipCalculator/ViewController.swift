//
//  ViewController.swift
//  TipCalculator
//
//  Created by William Huang on 9/14/14.
//  Copyright (c) 2014 Stanford University. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    var currentTipPercentage: Double = 15.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func screenTapped(sender: UITapGestureRecognizer) {
        self.textField.endEditing(true)
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if row == 0{
            return "15.0"
        } else{
            return "20.0"
        }
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            self.currentTipPercentage = 15.0
        } else{
            self.currentTipPercentage = 20.0
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.destinationViewController is ResultsViewController{
            var resultsVC: ResultsViewController = segue.destinationViewController as ResultsViewController
            resultsVC.tipPercentage = self.currentTipPercentage
            resultsVC.price = (self.textField.text as NSString).doubleValue
        }
    }
}

