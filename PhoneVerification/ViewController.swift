//
//  ViewController.swift
//  PhoneVerification
//
//  Created by Alex on 10/20/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var underscoreLbl: UILabel!
    
    // MARK: - Actions
    
    @IBAction func editingDidChange(_ sender: UITextField) {
        if(sender.text?.count == 0){
            underscoreLbl.text = String(format: "%@_ _ _ _ _ _", sender.text! + " ")
        }

        if(sender.text?.count == 1){
            underscoreLbl.text = String(format: "%@_ _ _ _ _", sender.text! + " ")
        }

        if(sender.text?.count == 2){
            underscoreLbl.text = String(format: "%@_ _ _ _", sender.text! + " ")
        }

        if(sender.text?.count == 3){
            underscoreLbl.text = String(format: "%@_ _ _", sender.text! + " ")
        }

        if(sender.text?.count == 4){
            underscoreLbl.text = String(format: "%@_ _", sender.text! + " ")
        }

        if(sender.text?.count == 5){
            underscoreLbl.text = String(format: "%@_", sender.text! + " ")
        }

        if(sender.text?.count == 6){
            underscoreLbl.text = String(format: "%@", sender.text!)
            sender.resignFirstResponder()
        }
    
    }
    
    // MARK: - VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textField.tintColor = .clear
        textField.backgroundColor = .clear
        textField.borderStyle = .none
    }

}

