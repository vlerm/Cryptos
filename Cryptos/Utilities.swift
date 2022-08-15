//
//  Utilities.swift
//  CryptoRate
//
//  Created by Вадим Лавор on 15.08.22.
//

import UIKit

class Utilities {
    
    static let apiKey = "bdb993ea4a71d5e7d9d20014df33fb5f"
    static let assetsStartPoint = "https://api.nomics.com/v1/currencies/ticker?key="
    static let assetsEndPoint = "&ranks=1&interval=1d,30d&convert=USD&per-page=10&page=1"
    static let emptyData = "No data received"
    
    static func convertToCorrectFormat(date: String) -> String {
        let oldDateFormatter = DateFormatter()
        oldDateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        oldDateFormatter.timeZone = TimeZone.current
        oldDateFormatter.locale = Locale.current
        guard let oldDate = oldDateFormatter.date(from: date) else { return emptyData }
        let convertDateFormatter = DateFormatter()
        convertDateFormatter.dateFormat = "MMM dd yyyy h:mm a"
        return convertDateFormatter.string(from: oldDate)
    }
    
    static func setGradientBackground(view: UIView, colorTop: CGColor = UIColor(red: 29.0/255.0, green: 34.0/255.0, blue:234.0/255.0, alpha: 1.0).cgColor, colorBottom: CGColor = UIColor(red: 38.0/255.0, green: 0.0/255.0, blue: 6.0/255.0, alpha: 1.0).cgColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
