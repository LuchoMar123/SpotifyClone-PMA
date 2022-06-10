

import Foundation

class Request {
    
    let token = "BQC42-faAeQ7IfXAIzkARBzppSJJEAoCjVrrlsNy-4nctBug4WcwsaOT0WW8UZ8Z462mrrCV_erKBanmrhDRSeDD3UMSY_NSzy662W8LbIny23ifwALoY8prkC3h_X76l8-bvtyyu1cg9t82EfwAKLx2iCsm2jF7z9WbBI-XoQeRX8HqHTdbyDAYtHW40dxRVdUbHXYfmGLP7h-GJ6zkkK4"
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            let urlParse = url.replacingOccurrences(of: " ", with: "%20")
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(urlParse)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
