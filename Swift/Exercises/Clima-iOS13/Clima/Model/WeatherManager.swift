import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=2d8ae2ff52d345640f7649a4f7d6cd45&units=metric"
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString!)
        }
    }
    
    func performRequest(urlString: String) {
        // 1. create url
        if let url = URL(string: urlString) {
            // 2. create url session
            let session = URLSession(configuration: .default) // object that kind of acts like a browser window
            // 3. give the session a task
            let task = session.dataTask(with: url, completionHandler: handle(data: response: error:)) // the task passes arguments
            // 4. complete the task
            task.resume() // new task begin in a suspended state, need to resume
        }
    }
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }

}
