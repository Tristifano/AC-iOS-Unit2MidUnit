//
//  RomeoAndJulietViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by MacBook on 11/5/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class RomeoAndJulietViewController: UIViewController, UITextFieldDelegate {
    let romeoAndJulietData = RomeoAndJulietModel()
    @IBOutlet weak var RandJTabLabel: UILabel!
    @IBOutlet weak var RandJTextField: UITextField!
    @IBOutlet weak var characterLinesLabel: UITextView!
    @IBOutlet weak var incorrectInputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        incorrectInputLabel.isHidden = true
        characterLinesLabel.text = ""
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let textField = textField.text {
            switch textField.lowercased() {
            case "romeo":
                incorrectInputLabel.isHidden = true
                characterLinesLabel.text = romeoAndJulietData.romeoLines()
                return true
            case "mercutio":
                incorrectInputLabel.isHidden = true
                characterLinesLabel.text = romeoAndJulietData.mercutioLines()
                return true
            case "benvolio":
                incorrectInputLabel.isHidden = true
                characterLinesLabel.text = romeoAndJulietData.benvolioLines()
                return true
            default:
                incorrectInputLabel.isHidden = false
                characterLinesLabel.text = ""
                return true
            }
        }
        return true
    }
    
    

    
}
