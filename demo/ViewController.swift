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
    
    var userValue: Float = 0.0
    var isBankBalance: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayBalance()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func numberPressed(sender: UIButton) {
        // this function gets called when any of the buttons are pressed
        if isBankBalance {
            isBankBalance = false
            displayBalance()
        }
        
        if let numberLabel = sender.titleLabel?.text {
            //this if construction insures that 
            //numberLable is defined
            numericDisplay.text?.extend(numberLabel)
            let inputFloat = numericDisplay.text?.floatValue
            userValue = inputFloat!
        }
        
    }
    
    @IBAction func withdraw(sender: UIButton) {
        bankAccountInfo.withdraw(userValue)
        isBankBalance = true
        displayBalance()
        resetUserValue()
    }
    
    @IBAction func deposit(sender: AnyObject) {
        bankAccountInfo.deposit(userValue)
        isBankBalance = true
        displayBalance()
        resetUserValue()
    }
    @IBAction func clearPressed(sender: AnyObject) {
        numericDisplay.text = ""
    }
    
    func clear (label:UILabel){
        label.text = ""
    }
    
    func displayBalance(){
        if isBankBalance{
            numericDisplay.text = bankAccountInfo.balance.stringValue
        } else{
            clear(numericDisplay)
        }
    }
    
    func resetUserValue() {
        userValue = 0.0
    }
}



