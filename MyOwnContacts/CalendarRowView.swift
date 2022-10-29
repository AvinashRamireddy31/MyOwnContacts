//
//  CalendarRowView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 29/10/22.
//

import SwiftUI

struct CalendarRowView: View {
    var entry: CalendarEntry
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text(entry.heading).foregroundColor(.red)
                Text(entry.timezone).foregroundColor(.yellow)
            }
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("0")//Small circular view like a dot
                    
                    //Vertical thin line
                    Text("|")
                    Text("|")
                    Text("|")
                    Text("|")
                    Text("|")
                    Text("|")
                }
                VStack(alignment: .leading) {
                    Text(entry.timezone).foregroundColor(.blue)
                    
                    Text(entry.body).foregroundColor(.green)
                }
            }
        }
    }
}
