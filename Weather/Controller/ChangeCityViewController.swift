//
//  ChangeCityViewController.swift
//  Weather
//
//  Created by Izloop on 6/24/19.
//  Copyright © 2019 Peter Levi Hornig. All rights reserved.
//

import UIKit
import ChameleonFramework

@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}


protocol ChangeCityDelegate {
    func userEnteredANewCityName (city : String)
}


class ChangeCityViewController: UIViewController {
    
    @IBOutlet var weatherButton: UIButton!
    @IBOutlet var cityField: UITextField!
    
    var delegate : ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!
    
    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        view.backgroundColor = .flatLime
        weatherButton.backgroundColor = .flatWatermelonDark
        cityField.backgroundColor = .flatWatermelon
    }
    
    //This is the IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
}
