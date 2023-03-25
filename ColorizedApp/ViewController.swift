//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Келлер Дмитрий on 25.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var demoView: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLayoutSubviews() {
        demoView.layer.cornerRadius = 15
        changedsSliderValue()
    }
    
    @IBAction func changedsSliderValue() {
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let  blue = CGFloat(blueSlider.value)
        
        redValueLabel.text = redSlider.value.formatted()
        greenValueLabel.text = greenSlider.value.formatted()
        blueValueLabel.text = blueSlider.value.formatted()
        
        demoView.backgroundColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1
        )
    }
}

