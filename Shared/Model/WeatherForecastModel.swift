//
//  WeatherForecastModel.swift
//  WeatherApp (iOS)
//
//  Created by Bianca on 09/11/21.
//

import Foundation
import UIKit

struct ForecastWeather: Codable {
    let weather: [Weather]
    let main: Main
    let cod: Int
    let id: Int
    let timezone: Int
    let name: String
    
    var icon: UIImage {
        guard let iconURL = imageURL else { return UIImage(named: "sun")! }
        let data = try? Data(contentsOf: iconURL)
        let icon = UIImage(data: data!)
        return icon!
    }
    
    var imageURL: URL? {
        guard let weather = weather.first else { return nil }
        return URL(string: "\(ApiConstants.iconBaseURL)\(weather.icon)@2x.png")
    }
}



struct City: Codable {
    let id: Int
    let name: String
    
    static func getDefaultCities() -> [City] {
        return [
            City(id: 3448439, name: "São Paulo"),
            City(id: 5367815, name: "London"),
            City(id: 5128638, name: "New York"),
            City(id: 6455259, name: "Paris"),
            City(id: 2950158, name: "Berlin"),
            City(id: 1850147, name: "Tokyo"),
            City(id: 2147714, name: "Sydney"),
            City(id: 3435910, name: "Buenos Aires"),
            City(id: 2759794, name: "Amsterdam")
        ]
    }
}

struct Main: Codable {
    let temp: Double
    let tempMin: Double
    let tempMax: Double
    let humidity: Int
    let pressure: Double
    
    enum CodingKeys: String, CodingKey {
        case temp, humidity, pressure
        case tempMin = "temp_min"
        case tempMax = "temp_max"
    }
}

struct Weather: Codable {
    let description: String
    let icon: String
    let main: String
    let id: Int
}

struct Days: Codable {
    static func formatDaysNames(sinceDate: String) -> String {
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd hh:mm:ss"
        guard let date = formater.date(from: sinceDate) else { return "empty data error" }
        formater.dateFormat = "EEE"
        return formater.string(from: date)
    }
}
