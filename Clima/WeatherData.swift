//
//  WeatherData.swift
//  Clima
//
//  Created by Lidiia Diachkovskaia on 4/28/25.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import UIKit

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}
