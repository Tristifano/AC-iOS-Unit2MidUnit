//
//  PoloniusViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by MacBook on 11/5/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class PoloniusViewController: UIViewController {
var poloniusData = PoloniusMonologueModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        monologueLabel.text = poloniusData.firstLine()
    }

    @IBOutlet weak var tabNameLabel: UILabel!
    @IBOutlet weak var monologueLabel: UILabel!
    @IBAction func nextLineButtonPressed(_ sender: UIButton) {
        monologueLabel.text = poloniusData.getNextLine()
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
