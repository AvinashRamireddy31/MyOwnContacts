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
            CalendarEntry(date: .now, timezone: "12", heading: "MON", body: "Today is Mihira's birthday.Celebrating in advance"),
            CalendarEntry(date: .now, timezone: "", heading: "", body: "Today is Mahathi's birthday.Simple celebration at home"),
            CalendarEntry(date: .now, timezone: "13", heading: "TUE", body: "Going out"),
            CalendarEntry(date: .now, timezone: "14", heading: "WED", body: "Driving car"),
            CalendarEntry(date: .now, timezone: "15", heading: "THU", body: "Driving car"),
            CalendarEntry(date: .now, timezone: "16", heading: "FRI", body: "Driving car"),
            CalendarEntry(date: .now, timezone: "17", heading: "SAT", body: "Driving car"),
            CalendarEntry(date: .now, timezone: "18", heading: "SUN", body: "Driving car"),
            
        ]
        
        return entries
    } 
}
