import Foundation

protocol WeatherManagerDelegate { // create the protocol inside the same file as the class that uses it
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=2d8ae2ff52d345640f7649a4f7d6cd45&units=metric" // https
    
    var delegate: WeatherManagerDelegate?
    
// function not used, could replace the closure inside performRequest
    
//    func handle(data: Data?, response: URLResponse?, error: Error?) {
//        if error != nil {
//            print(error!)
//            return
//        }
//
//        if let safeData = data {
//            let dataString = String(data: safeData, encoding: .utf8) // properly encode the response
//            self.parseJSON(weatherData: safeData)
//        }
//    }
    
    func performRequest(_ urlString: String) {
        // 1. create url
        if let url = URL(string: urlString) {
            
            // 2. create url session
            let session = URLSession(configuration: .default) // object that kind of acts like a browser window
            
            // 3. give the session a task
            let task = session.dataTask(with: url) {(data, response, error) in // using a closure
                if error != nil { // if an error occurs
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data { // no error, decode JSON
                    if let weather = self.parseJSON(safeData) {
                        self.delegate?.didUpdateWeather(self, weather: weather)
                    }
                }
            }
            
            // 4. complete the task
            task.resume() // new task begin in a suspended state, need to resume
        }
    }
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString)
    }
    
    func parseJSON(_ weatherData: Data) -> WeatherModel? { // setting WeatherModel as optional to be able to return nil
        let decoder = JSONDecoder()
        
        do { // try performing a request
            // adding self to reference the type
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            
            return weather
            
        } catch { // handle the error if it occurs
            self.delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
