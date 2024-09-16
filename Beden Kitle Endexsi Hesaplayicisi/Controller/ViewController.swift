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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Test")
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value))
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
}

