//
//  ViewController.swift
//  Pre-work
//
//  Created by Anna Nguyen on 7/31/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipTwoLabel: UILabel!
    @IBOutlet weak var tipThreeLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billView: UIView!
    @IBOutlet weak var tipView: UIView!
    @IBOutlet weak var totalView: UIView!
    @IBOutlet weak var onePerson: UILabel!
    @IBOutlet weak var twoPeople: UILabel!
    @IBOutlet weak var threePeople: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billView.layer.cornerRadius = 5
        billView.layer.masksToBounds = true
        tipView.layer.cornerRadius = 5
        tipView.layer.masksToBounds = true
        totalView.layer.cornerRadius = 5
        totalView.layer.masksToBounds = true
        billField.adjustsFontSizeToFitWidth = true;
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        billField.becomeFirstResponder()
        
        let defaults = UserDefaults.standard
        let defaultTip = defaults.integer(forKey: "myDefault")
        let emoji = defaults.string(forKey: "myEmoji") ?? "😊"
        
        tipControl.selectedSegmentIndex = defaultTip
        onePerson.text = "\(emoji)"
        twoPeople.text = "\(emoji)" + "\(emoji)"
        threePeople.text = "\(emoji)" + "\(emoji)" + "\(emoji)"
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total
        totalLabel.text = String(format: "$%.2f", total)
        tipLabel.text = String(format: "$%.2f", tip)
        tipTwoLabel.text = String(format: "$%.2f", ceil(tip/2))
        tipThreeLabel.text = String(format: "$%.2f", ceil(tip/3))
        
    }
}

