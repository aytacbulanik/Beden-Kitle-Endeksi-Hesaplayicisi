//
//  SecondViewController.swift
//  Beden Kitle Endexsi Hesaplayicisi
//
//  Created by Aytaç Bulanık on 19.09.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : String?
    var bmiAdvice : String?
    var bmiColor : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let bmiValue else { return }
        guard let bmiAdvice else { return }
        resultLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        if let bmiColor {
            view.backgroundColor = bmiColor
        }
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
   
}
