//
//  BankAccountModel.swift
//  demo
//
//  Created by Erika Miguel on 9/27/14.
//  Copyright (c) 2014 Eitan Mendelowitz. All rights reserved.
//

import Foundation
import UIKit

class BankAccountModel {
    var balance : Float
    
    init(balance : Float) {
        self.balance = balance
    }
    
    func deposit(amount : Float) {
        balance += amount
    }
    
    func withdraw(amount :Float) -> Bool {
        if(amount <= balance) {
            balance -= amount
            return true
        } else {
            return false
        }
    }
    
    func getBalance() -> Float{
        return balance
    }
}

extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }
}

extension Float {
    var stringValue: String {
        return NSString(format: "%.2f", self)
    }
    
}
