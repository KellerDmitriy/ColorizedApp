//
//  SettingViewController.swift
//  ColorizedApp
//
//  Created by Келлер Дмитрий on 25.03.2023.
//

import UIKit

final class SettingViewController: UIViewController {
    
    @IBOutlet private weak var demoView: UIView!
    
    @IBOutlet private weak var redValueLabel: UILabel!
    @IBOutlet private weak var greenValueLabel: UILabel!
    @IBOutlet private weak var blueValueLabel: UILabel!
    
    @IBOutlet private weak var redSlider: UISlider!
    @IBOutlet private weak var greenSlider: UISlider!
    @IBOutlet private weak var blueSlider: UISlider!
    
    var colorRGB: UIColor!
    unowned var delegate: SettingsViewVControllerDelegate!
    
    override func viewDidLoad() {
        demoView.layer.cornerRadius = 15
        colorizedView(withColor: colorRGB)
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
    
    @IBAction func doneButtonPressed() {
        delegate.colorized(with: demoView.backgroundColor ?? colorRGB)
        dismiss(animated: true)
        //не уверен, что так правильно развернуть опциональное значение в этом случае
    }
    
    private func setColor() {
        demoView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func colorizedView(withColor colorRGB: UIColor) {
        demoView.backgroundColor = colorRGB
        
        redValueLabel.text = String(format:"%.2f", colorRGB.rgbAlpha.red)
        greenValueLabel.text = String(format:"%.2f", colorRGB.rgbAlpha.green)
        blueValueLabel.text = String(format:"%.2f", colorRGB.rgbAlpha.blue)
        
        redSlider.value = Float(colorRGB.rgbAlpha.red)
        greenSlider.value = Float(colorRGB.rgbAlpha.green)
        blueSlider.value = Float(colorRGB.rgbAlpha.blue)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

private extension UIColor {
    var rgbAlpha: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        return (red, green, blue, alpha)
    }
}

