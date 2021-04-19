//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Adnan Sarker on 17/04/2021.
//  Copyright © 2021 Justdreams. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSLider: UISlider!
    
    @IBAction func heightSliderPressed(_ sender: UISlider) {
        //let height = sender.value
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSliderPressed(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightLabel.text = "\(weight) kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = Float( heightSlider.value)
        let weight = Float (weightSLider.value)
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        //segue
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        heightSlider.value = 0.01
        weightSLider.value = 1
        
        heightLabel.text = "0.01 m"
        weightLabel.text = "1 kg"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

