//
//  WeatherManager.swift
//  Clima
//
//  Created by Lidiia Diachkovskaia on 3/31/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=9d766e2cc5ba0a8743215d778887930c&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
    
}

//9d766e2cc5ba0a8743215d778887930c
