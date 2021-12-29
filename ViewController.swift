//
//  ViewController.swift
//  Exercicio 4 App
//
//  Created by Gustavo Soares dos Santos on 29/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateIMC(_ sender: Any) {
        let h = Double(heightField.text!)
        let w = Double(weightField.text!)
        
        let bmi = BMIModel(height: h!, weight: w!)
        result.text = String(bmi.bmi())
        let result = bmi.bmi()
        
        if (result <= 18.4) {
            return imageView.image = UIImage(named: "skinny")
        } else if (result <= 24.9){
            return imageView.image = UIImage(named: "healthy")
        } else if (result >= 25){
            return imageView.image = UIImage(named: "fat")
        }
    }
}
