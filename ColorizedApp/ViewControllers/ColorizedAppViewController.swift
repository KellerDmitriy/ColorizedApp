//
//  ColorizedAppViewController.swift
//  ColorizedApp
//
//  Created by Келлер Дмитрий on 11.04.2023.
//

import UIKit

protocol SettingsViewVControllerDelegate: AnyObject {
    func colorized(with colorRGB: UIColor)
}

final class ColorizedAppViewController: UIViewController {
 
    @IBOutlet weak var colorView: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVS = segue.destination as? SettingViewController else {
            return
        }
        settingVS.colorRGB = view.backgroundColor
        settingVS.delegate = self
    }
}

// MARK: - SettingsViewVControllerDelegate
extension ColorizedAppViewController: SettingsViewVControllerDelegate {
    func colorized(with colorRGB: UIColor) {
        view.backgroundColor = colorRGB
       
    }
}
