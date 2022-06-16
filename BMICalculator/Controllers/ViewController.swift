//
//  ViewController.swift
//  BMICalculator
//
//  Created by Tabita Barbosa on 15/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let metersLabel = "m"
        var heightValue = String(format: "%.2f", sender.value)
        heightLabel.text = String(heightValue)+metersLabel
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let kilosLabel = "kg"
        var weightValue = String(format: "%.0f", sender.value)
        weightLabel.text = String(weightValue)+kilosLabel
    }
    
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmiValue = weight / pow(height, 2)
        print(String(format: "%.2f", bmiValue))
    }
    
    
}

