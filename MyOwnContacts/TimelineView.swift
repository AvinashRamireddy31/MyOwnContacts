//
//  CalendarView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 18/10/22.
//

import SwiftUI

struct TimelineView: View {
    var entries = CalendarServices.shared.getAllEntries()
    
    var body: some View {
        NavigationView{
            
            List(entries) { entry in
                Text(entry.heading)
                
            }
            .navigationTitle(Text("Timeline View"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
