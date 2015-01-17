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
    @IBOutlet weak var personIcon21: UIImageView!
    @IBOutlet weak var personIcon22: UIImageView!
    @IBOutlet weak var personIcon31: UIImageView!
    @IBOutlet weak var personIcon32: UIImageView!
    @IBOutlet weak var personIcon33: UIImageView!
    @IBOutlet weak var personIcon41: UIImageView!
    @IBOutlet weak var personIcon42: UIImageView!
    @IBOutlet weak var personIcon43: UIImageView!
    @IBOutlet weak var personIcon44: UIImageView!
    @IBOutlet weak var rule1: UIView!
    @IBOutlet weak var rule2: UIView!
    @IBOutlet weak var rule3: UIView!
    @IBOutlet weak var rule4: UIView!
    
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
            
            self.personIcon1.hidden = true
            self.personIcon21.hidden = true
            self.personIcon22.hidden = true
            self.personIcon31.hidden = true
            self.personIcon32.hidden = true
            self.personIcon33.hidden = true
            self.personIcon41.hidden = true
            self.personIcon42.hidden = true
            self.personIcon43.hidden = true
            self.personIcon44.hidden = true
            
            self.rule1.hidden = true
            self.rule2.hidden = true
            self.rule3.hidden = true
            self.rule4.hidden = true
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

