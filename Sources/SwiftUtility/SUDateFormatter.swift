//
//  SUDateFormatter.swift
//
//
//  Created by Surya Vummadi on 13/02/25.
//

import Foundation

open class SUDateFormatter {
    static let shared = SUDateFormatter()

    public enum DateFormatterStyle: String {
        case OnlyDate = "yyyy-MM-dd"
        case OnlyTime = "HH:mm:ss"
    }

    public init() { }
    
    public static func getDateString(date: Date, format: DateFormatterStyle) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
}
