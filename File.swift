
import UIKit

var str = "Alper Bektas"

func verifyUrl (_ urlString: String?) -> Bool {
    let fixedUrlString = urlString
    
    if let urlString = fixedUrlString {
        if let url = URL(string: urlString) {
            return UIApplication.shared.canOpenURL(url)
        }
    }
    return false
}

//print(verifyUrl(str))


func goOrSearchUrl (_ url : String) -> String {
    let isURL = verifyUrl(url)
    
    if isURL == true {
        return url
    }
    let addedPlus = url.replacingOccurrences(of: " ", with: "+")
    let searchedURL = "https://google.com/search?q=\(addedPlus)"
    return searchedURL
}

let returnedUrl = goOrSearchUrl(str)




