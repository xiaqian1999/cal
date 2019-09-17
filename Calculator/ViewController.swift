//
//  ViewController.swift
//  Calculator
//
//  Created by 潘玉霖 on 9/17/19.
//  Copyright © 2019 xiaqian. All rights reserved.
// this is a test

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var fourLabel: UILabel!
    
    @IBOutlet weak var threeLabel: UILabel!
    
    @IBOutlet weak var twoLabel: UILabel!
    
    @IBOutlet weak var oneLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        //Calculate the tip
        let tipPercentages = [0.1, 0.15, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        //Calculate the total
        let fourtotal = (bill + tip) / 4
        let threetotal = (bill + tip) / 3
        let twototal = (bill + tip) / 2
        let onetotal = bill + tip
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        fourLabel.text = String(format: "$%.2f", fourtotal)
        threeLabel.text = String(format: "$%.2f", threetotal)
        twoLabel.text = String(format: "$%.2f", twototal)
        oneLabel.text = String(format: "$%.2f", onetotal)
        
        print("Finished")
    }
    
}

