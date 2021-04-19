//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Justdream on 18/04/2021.
//  Copyright © 2021 Justdreams. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        adviceLabel.text = advice
        bmiLabel.text = bmiValue
        view.backgroundColor = color
    }
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
