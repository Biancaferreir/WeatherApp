//
//  WeatherForecastViewModel.swift
//  WeatherApp (iOS)
//
//  Created by Bianca on 09/11/21.
//

import Foundation
import UIKit

class WeatherViewModel: ObservableObject {
    @Published var cityName: String = "-"
    @Published var descriptionText: String = ""
    @Published var temperature: String = ""
    @Published var tempMax: String = ""
    @Published var tempMin: String = ""
    @Published var forecastIcon: UIImage = UIImage()
    
    init() {
        currentWeather()
    }
    
    func currentWeather() {
        guard let
                url = URL(string: "\(ApiConstants.baseURL)/weather?id=3454743&units=metric&appid=8c3a6068950e7f954470972efa54c626")
        else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data , error == nil else { return }
            
            do {
                let response = try JSONDecoder().decode(ForecastWeather.self, from: data)
                DispatchQueue.main.async {
                    self.cityName = response.name
                    self.temperature = "\(response.main.temp)"
                    self.tempMax = "\(response.main.tempMax)"
                    self.tempMin = "\(response.main.tempMin)"
                    self.forecastIcon = response.icon
                }
            } catch {
                print("falide")
            }
        }
        task.resume()
    }
}
