//
//  ISODate.swift
//  hackaton-leboncoin
//
//  Created by Antoine BOISADAM on 26/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import Foundation

extension Date {
    static func ISOStringFromDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "fr")
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+1")
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
        
        return dateFormatter.string(from: date)
    }
    
    static func dateFromISOString(string: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "fr")
        dateFormatter.timeZone = TimeZone.autoupdatingCurrent
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        return dateFormatter.date(from: string)
    }
}
