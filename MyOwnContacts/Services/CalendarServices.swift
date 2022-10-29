//
//  CalendarEntries.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 18/10/22.
//

import Foundation


final class CalendarServices {
    static let shared = CalendarServices()
    
    func getAllEntries() -> [CalendarEntry] {
        let entries = [
            CalendarEntry(date: .now, timezone: "IST", heading: "Birthday", body: "Today is mihira's birthday"),
            CalendarEntry(date: .now, timezone: "IST", heading: "Out", body: "Going out"),
            CalendarEntry(date: .now, timezone: "IST", heading: "Car", body: "Driving car"),
            
        ]
        
        return entries
    } 
}
