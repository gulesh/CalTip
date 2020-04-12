//
//  ViewController.swift
//  CalTip
//
//  Created by Gulesh Shukla on 4/12/20.
//  Copyright © 2020 Gulesh Shukla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        //get the amount
        //calculate the tip and total
        //update the tip and total label
        let bill = Double(BillField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * (tipPercentages[tipControl.selectedSegmentIndex])
        let total = tip + bill
        
        TipLabel.text = String(format: "$ %.2f", tip)
        TotalLabel.text = String(format: "$ %.2f", total)
        
    }
    
    
}

