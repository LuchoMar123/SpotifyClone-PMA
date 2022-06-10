
import Foundation

class HelperString {
    
    static let imageProfileLink = "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=820892651739408&height=300&width=300&ext=1657428566&hash=AeQNQFXgkpCUjZLq0Ew"
    
    static func getURLFromString(url: String) -> URL? {
        guard let url = URL(string: url) else { return nil }
        
        return url
    }
    
    static func setFormatNumber(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        guard let formattedNumber = numberFormatter.string(from: NSNumber(value: number)) else { return "" }
        
        return formattedNumber
    }
    
}
