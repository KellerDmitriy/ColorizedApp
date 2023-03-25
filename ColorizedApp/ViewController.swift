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
    
    private func createRGB() {
        demoView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    override func viewDidLayoutSubviews() {
        demoView.layer.cornerRadius = 15
        changeSlidersValues()
        createRGB()
    }
    
    @IBAction private func changeSlidersValues() {
        redValueLabel.text = redSlider.value
            .formatted(.number.precision(.fractionLength(2)))
        greenValueLabel.text = greenSlider.value
            .formatted(.number.precision(.fractionLength(2)))
        blueValueLabel.text = blueSlider.value
            .formatted(.number.precision(.fractionLength(2)))
    }
}

