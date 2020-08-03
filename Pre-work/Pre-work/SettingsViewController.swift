//
//  SettingsViewController.swift
//  Pre-work
//
//  Created by Anna Nguyen on 8/3/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipView: UIView!
    @IBOutlet weak var emojiView: UIView!
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    @IBOutlet weak var emojiField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        defaultTipView.layer.cornerRadius = 5
        defaultTipView.layer.masksToBounds = true
        emojiView.layer.cornerRadius = 5
        emojiView.layer.masksToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let defaultTip = defaults.integer(forKey: "myDefault")
        let emoji = defaults.string(forKey: "myEmoji") ?? "😊"
        
        defaultTipControl.selectedSegmentIndex = defaultTip
        emojiField.text = emoji
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func setDefault(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "myDefault")
        defaults.set(emojiField.text, forKey: "myEmoji")
        
        defaults.synchronize()
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
