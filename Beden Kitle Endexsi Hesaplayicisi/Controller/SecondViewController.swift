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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let bmiValue else { return }
        resultLabel.text = bmiValue
        
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
   
}
