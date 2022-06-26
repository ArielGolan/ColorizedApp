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
    
    @IBOutlet var redLable: UILabel!
    @IBOutlet var greenLable: UILabel!
    @IBOutlet var blueLable: UILabel!
    
    @IBOutlet var redLableValue: UILabel!
    @IBOutlet var greenLableValue: UILabel!
    @IBOutlet var blueLableValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorScreenView.layer.cornerRadius = 20
  
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        setupLables()

    }


    // MARK: - IB Actions

    @IBAction func redSliderAction() {
        redLableValue.text = "\(round(redSlider.value * 100) / 100)"
    
    }

    @IBAction func greenSliderAction() {
        greenLableValue.text = "\(round(greenSlider.value * 100) / 100)"
    }
    
    @IBAction func blueSliderAction() {
        blueLableValue.text = "\(round(blueSlider.value * 100) / 100)"
    }
    
    @IBAction func setColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colorScreenView.backgroundColor = UIColor(red: red,
                                                  green: green,
                                                  blue: blue,
                                                  alpha: 1
        )
    }
    
    
    
    
    // MARK: - Private Methods
    
    private func setupLables() {
        redLable.font = UIFont.systemFont(ofSize: 20)
        redLable.textColor = .white
        redLableValue.text = String(redSlider.value)
         
        greenLable.font = UIFont.systemFont(ofSize: 20)
        greenLable.textColor = .white
        greenLableValue.text = String(greenSlider.value)
        
        blueLable.font = UIFont.systemFont(ofSize: 20)
        blueLable.textColor = .white
        blueLableValue.text = String(blueSlider.value)
    }
    
    private func setupRedSlider() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
   
}

