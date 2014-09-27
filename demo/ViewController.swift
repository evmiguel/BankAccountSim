//
//  ViewController.swift
//  demo
//
//  Created by Eitan Mendelowitz on 9/22/14.
//  Copyright (c) 2014 Eitan Mendelowitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bankAccountInfo = BankAccountModel(balance:100000)
    @IBOutlet weak var numericDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberPressed(sender: UIButton) {
        // this function gets called when any of the buttons are pressed

        if let numberLabel = sender.titleLabel?.text {
            //this if construction insures that 
            //numberLable is defined
            numericDisplay.text?.extend(numberLabel)
        }
        
    }
}



