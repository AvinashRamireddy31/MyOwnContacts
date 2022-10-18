//
//  CalendarView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 18/10/22.
//

import SwiftUI

struct CalendarView: View {
    private var entries = CalendarServices.shared.getAllEntries()
    
    var body: some View {
        NavigationView{
            
            List(entries) { entry in
                Text(entry.heading) 
            }
            .navigationTitle(Text("Timeline"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
