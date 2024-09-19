//
//  ViewController.swift
//  Beden Kitle Endexsi Hesaplayicisi
//
//  Created by Aytaç Bulanık on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var calculateButtonOut: UIButton!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculateManager = CalculateManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Test")
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateManager.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "secondSegue", sender: self)
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = " \(String(format: "%.2f", sender.value)) m "
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = " \(String(format: "%.0f", sender.value)) kg "
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondSegue" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.bmiValue = calculateManager.getBMIValue()
        }
    }
}

