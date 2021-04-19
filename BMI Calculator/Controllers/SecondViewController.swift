//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Justdream on 17/04/2021.
//  Copyright © 2021 Justdreams. All rights reserved.
//




//Its optional class for new VC! nothing related to this project, rather than it serves educational purpose



import UIKit

class SecondViewController : UIViewController {
    
    var BMI = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
        label.text = "BMI is: " + BMI
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
        label.textColor = .white
    }
    
    
    
}
