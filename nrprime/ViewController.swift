//
//  ViewController.swift
//  nrprime
//
//  Created by Buzoianu Stefan on 28/10/17.
//  Copyright © 2017 Buzoianu Stefan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var initialView: UIView!
    func checkPrimeWith(value number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        
        if number <= 3 {
            return true
        }
        
        //for (i = 2; i <= n/2; i++)
        for i in 2...(number/2) {
            if number % i == 0 {
                return false
            }
        }
        
        return true
    }
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func onTap(_ sender: UIButton) {
        if let n = textField.text {
            if let number: Int = Int(n) {
                if checkPrimeWith(value: number){
                    statusLabel.text = "ESTE PRIM!"
                    view.backgroundColor = UIColor.green
                }
                else {
                    statusLabel.text = "NU ESTE PRIM!"
                    view.backgroundColor = UIColor.red
                }
                
            }
            else {
                statusLabel.text = "Nu este numar"
            }
        }
    }
}

