//
//  ViewController.swift
//  BMI_Calc_2
//
//  Created by Risma Fadillah on 05/05/19.
//  Copyright © 2019 Risma Fadillah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Header: UILabel!
    
    @IBOutlet weak var SwitchButton: UISegmentedControl!
    
    @IBOutlet weak var WeightLabel: UILabel!
    
    @IBOutlet weak var WeightSlider: UISlider!
    
    @IBOutlet weak var WeightValue: UILabel!
    
    @IBOutlet weak var HeightLabel: UILabel!
    
    @IBOutlet weak var HeightSlider: UISlider!
    
    @IBOutlet weak var HeightValue: UILabel!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    @IBOutlet weak var BMIValue: UILabel!
    
    @IBOutlet weak var BMIStatus: UILabel!
    
    @IBAction func SwitchColor(_ sender: UISegmentedControl) {
        if SwitchButton.selectedSegmentIndex == 0 {
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            Header.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            WeightLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            WeightValue.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            HeightLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            HeightValue.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            ResultLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            BMIValue.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            BMIStatus.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else if SwitchButton.selectedSegmentIndex == 1 {
            self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            Header.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            WeightLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            WeightValue.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            HeightLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            HeightValue.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            ResultLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            BMIValue.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            BMIStatus.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    
    @IBAction func WeightSlider(_ sender: UISlider){
        let weightBerat = String (format: "%.2f", WeightSlider.value)
        
        WeightLabel.text = "\(weightBerat) Kg"
        
        
        BMICalculator(yourWeightInKg: WeightSlider.value, yourHeightInM: HeightSlider.value)
    }
    
    @IBAction func HeightSlider(_ sender: UISlider){
        let heightTinggi = String (format: "%.2f", HeightSlider.value)
        
        HeightLabel.text = "\(heightTinggi) M"
        
        BMICalculator(yourWeightInKg: WeightSlider.value, yourHeightInM: HeightSlider.value)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BMIValue.text = "Kg/M2"
        BMIStatus.text = " "
    }
    
    func BMICalculator (yourWeightInKg: Float, yourHeightInM: Float) {
        let yourBMI = yourWeightInKg/(yourHeightInM*yourHeightInM)
        let resultBounded = String (format: "%.2f", yourBMI)
        
        BMIValue.text = "\(resultBounded) Kg/m2"
        
    
        if yourBMI >= 30 {
            BMIStatus.text = "you are obessed"
            BMIStatus.textColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        } else if yourBMI >= 25 {
            BMIStatus.text = "you are overweight"
            BMIStatus.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        } else if yourBMI >= 18.5 {
            BMIStatus.text = "you are normal weight"
            BMIStatus.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else {
            BMIStatus.text = "you are underweight"
            BMIStatus.textColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        }
        
    }
    
    }


