//
//  WeatherData.swift
//  Clima
//
//  Created by Jan Pęski on 08/02/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable { // can decode itself from JSON
    let name: String
    let main: Main
    let weather: [Weather] // this property holds an array
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
    let id: Int
}
