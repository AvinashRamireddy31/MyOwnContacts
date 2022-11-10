//
//  CalendarView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 18/10/22.
//

import SwiftUI

struct CalendarView: View {
    @State private var entries = CalendarServices.shared.getAllEntries()
    
    var body: some View {
        NavigationStack {
            List(entries) { entry in
                NavigationLink(value: entry) {
                    CalendarRowView(entry: entry)
                }
            }
            .navigationDestination(for: CalendarEntry.self, destination: { entry in
                Text(entry.body)
            })
        }
    }
}
