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
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        //Networking steps:
        //1.create a url
        if let url = URL(string: urlString) {
            //2. create a URLSession
            let session = URLSession(configuration: .default)
            //3. give the session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                {
                    if error != nil {
                        print(error!)
                        return
                    }
                    
                    if let safeData = data {
                        let dataString = String(data: safeData, encoding: .utf8)
                        print(dataString)
                        
                    }
                }
            }
            //let task = session.dataTask(with: url, completionHandler: handle(data: response: error: ))
            
            
            //4. start the task
            task.resume()
        }
    }
    
    //func for task's completionHandler
    //    func handle(data: Data?, response: URLResponse?, error: Error?) {
    //        if error != nil {
    //            print(error!)
    //            return
    //        }
    //
    //        if let safeData = data {
    //            let dataString = String(data: safeData, encoding: .utf8)
    //            print(dataString)
    //
    //        }
    //    }
}


//9d766e2cc5ba0a8743215d778887930c
