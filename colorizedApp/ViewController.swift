//
//  ViewController.swift
//  colorizedApp
//
//  Created by Ariel Golan on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
// MARK: - IB Outlets
    
    @IBOutlet var colorScreenView: UIView!
    
    @IBOutlet var redLableValue: UILabel!
    @IBOutlet var greenLableValue: UILabel!
    @IBOutlet var blueLableValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorScreenView.layer.cornerRadius = 15
        setColor()
        setValue(for: redLableValue, greenLableValue, blueLableValue)

    }
   
    @IBAction func rgbSliders(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redLableValue.text = string(from: redSlider)
        case greenSlider:
            greenLableValue.text = string(from: greenSlider)
        default:
            blueLableValue.text = string(from: blueSlider)
        }
    }
    
    private func setColor() {
        colorScreenView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for lables: UILabel...) {
        lables.forEach { lable in
            switch lable {
            case redLableValue:
                redLableValue.text = string(from: redSlider)
            case greenLableValue:
                greenLableValue.text = string(from: greenSlider)
            default:
                blueLableValue.text = string(from: blueSlider)
            }
        }
        
    }
    
    private func string(from slider: UISlider) -> String {
    String(format: "%.2f", slider.value)
        
    }
}


