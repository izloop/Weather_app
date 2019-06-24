//
//  WeatherDataModel.swift
//  Weather
//
//  Created by Izloop on 6/23/19.
//  Copyright © 2019 Peter Levi Hornig. All rights reserved.
//

import UIKit

class WeatherDataModel {
    
    //Declare model variables here
    
    var temperature: Int = 0
    var condition: Int = 0
    var city: String = ""
    var weatherIconName: String = ""
    
    
    //This method turns a condition code into the name of the weather condition image
    
    func updateWeatherIcon(condition: Int) -> String {
        
        switch (condition) {
            
        case 0...300 :
            return "thunderstorm"
            
        case 301...500 :
            return "rain"
            
        case 501...600 :
            return "rainstorm"
            
        case 601...700 :
            return "snow2"
            
        case 701...771 :
            return "fog"
            
        case 772...799 :
            return "thunderstorm"
            
        case 800 :
            return "sun"
            
        case 801...804 :
            return "sun3"
            
        case 900...903, 905...1000  :
            return "sunstorm"
            
        case 903 :
            return "snow"
            
        case 904 :
            return "suncloud"
            
        default :
            return "na"
        }
        
    }
}

