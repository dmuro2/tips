//
//  ViewController.swift
//  tips
//
//  Created by David Muro on 1/13/15.
//  Copyright (c) 2015 David Muro II. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalLabel2: UILabel!
    @IBOutlet weak var totalLabel3: UILabel!
    @IBOutlet weak var totalLabel4: UILabel!
    @IBOutlet weak var personIcon1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0 TIP"
        totalLabel.text = "$0"
        totalLabel2.text = "$0"
        totalLabel3.text = "$0"
        totalLabel4.text = "$0"
        
        func hideContainerView(){
            
            self.tipLabel.hidden = true
            
            self.totalLabel.hidden = true
            self.totalLabel2.hidden = true
            self.totalLabel3.hidden = true
            self.totalLabel4.hidden = true
        }
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        var total2 = (billAmount + tip) / 2
        var total3 = (billAmount + tip) / 3
        var total4 = (billAmount + tip) / 4
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        totalLabel2.text = "$\(total2)"
        totalLabel3.text = "$\(total3)"
        totalLabel4.text = "$\(total4)"
        
        tipLabel.text = String(format: "$%.2f" + " TIP", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalLabel2.text = String(format: "$%.2f", total2)
        totalLabel3.text = String(format: "$%.2f", total3)
        totalLabel4.text = String(format: "$%.2f", total4)
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        
    }

}

