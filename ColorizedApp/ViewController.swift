//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Келлер Дмитрий on 25.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var demoView: UIView!
    
    @IBOutlet private weak var redValueLabel: UILabel!
    @IBOutlet private weak var greenValueLabel: UILabel!
    @IBOutlet private weak var blueValueLabel: UILabel!
    
    @IBOutlet private weak var redSlider: UISlider!
    @IBOutlet private weak var greenSlider: UISlider!
    @IBOutlet private weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        demoView.layer.cornerRadius = 15
        setColor()
        
        redValueLabel.text = string(from: redSlider)
        greenValueLabel.text = string(from: greenSlider)
        blueValueLabel.text = string(from: blueSlider)
    }
    
    
    @IBAction func changeSliderValue(_ sender: UISlider) {
        setColor()
        
        switch sender{
        case redSlider:
            redValueLabel.text = string(from: redSlider)
        case greenSlider:
            greenValueLabel.text = string(from: greenSlider)
        default:
            blueValueLabel.text = string(from: blueSlider)
        }
    }
 
    private func setColor() {
        demoView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
}

