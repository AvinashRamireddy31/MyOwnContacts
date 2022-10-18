//
//  CalendarEntry.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 18/10/22.
//

import Foundation

struct CalendarEntry: Identifiable {
    let id = UUID()
    let date: Date
    let timezone: String
    let heading: String
    let body: String 
}
