//
//  CalendarRowView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 29/10/22.
//

import SwiftUI

struct CalendarRowView: View {
    var entry: CalendarEntry
    
//    var body: some View {
//        // Get screen width and subtract Safe Area margins
//            let containerWidth:CGFloat = UIScreen.main.bounds.width
//
//        // Set frame width of each column using (containerWidth * percentage)
//            HStack (spacing:0) {
//                HStack {
//                    Text("MON")
//                }.frame(width: containerWidth * 0.2)
//
//                HStack {
//                    Text("Data goes here")
//                }.frame(width: containerWidth * 0.6)
//
//            }
//
//    }
    
    var body: some View {
        let containerWidth:CGFloat = UIScreen.main.bounds.width
        
        HStack(alignment: .top) {
            VStack(alignment: .center) {
                Text(entry.heading).foregroundColor(.red)
                Text(entry.timezone).foregroundColor(.yellow)
            }.frame(width: containerWidth * 0.1)
            
            Spacer().frame(width: containerWidth * 0.1)
            
            VStack(alignment: .leading) {
                Text(entry.timezone).foregroundColor(.blue)

                Text(entry.body).foregroundColor(.green)
            }//.frame(width: containerWidth * 0.6)
            
//            Spacer().frame(width: containerWidth * 0.05)
        }
    }
}
