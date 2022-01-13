import Foundation
struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=\(Utils.API_KEY)&units=metric"
    
    func getWeatherForLocation(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(bigUrl: urlString)
    }
    
    func performRequest(bigUrl value : String) {
        //To perform a network request:
        
        //1. Create a URL
        if let url = URL(string: value){
            
            //2. Create a session
            let session = URLSession(configuration: .default)
            
            //3. Give the seession a task
            let task = session.dataTask(with: url, completionHandler: completionHandler(data:urlResponse:error:))
            
            //4. Start the task
            task.resume()
        }
    }
    
    func completionHandler(data: Data?, urlResponse: URLResponse?, error: Error?) {
        
    }
}
