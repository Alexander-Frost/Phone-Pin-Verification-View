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
    @IBOutlet weak var entryLbl: UILabel!
    
    // MARK: - Actions
    
    @IBAction func editingDidChange(_ sender: UITextField) {
        if(sender.text?.count == 0){
            entryLbl.text = sender.text! + " "
        }

        if(sender.text?.count == 1){
            entryLbl.text = stringSpace(text: sender.text!)
        }

        if(sender.text?.count == 2){
            entryLbl.text = stringSpace(text: sender.text!)
        }

        if(sender.text?.count == 3){
            entryLbl.text = stringSpace(text: sender.text!)
        }

        if(sender.text?.count == 4){
            entryLbl.text = stringSpace(text: sender.text!)
        }

        if(sender.text?.count == 5){
            entryLbl.text = stringSpace(text: sender.text!)
        }

        if(sender.text?.count == 6){
            entryLbl.text = stringSpace(text: sender.text!)

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

    // MARK: - Methods
    
    private func stringSpace(text: String) -> String {
        return text.inserting(separator: " ", every: 1)
    }
}


extension StringProtocol where Self: RangeReplaceableCollection {
    mutating func insert(separator: Self, every n: Int) {
        for index in indices.reversed() where index != startIndex &&
            distance(from: startIndex, to: index) % n == 0 {
            insert(contentsOf: separator, at: index)
        }
    }

    func inserting(separator: Self, every n: Int) -> Self {
        var string = self
        string.insert(separator: separator, every: n)
        return string
    }
}


