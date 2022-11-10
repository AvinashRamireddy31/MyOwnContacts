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
        let containerWidth:CGFloat = UIScreen.main.bounds.width
        let width: CGFloat = 10
        HStack(alignment: .top, spacing: 0) {
            VStack() {
                Text(entry.heading)
                Text(entry.timezone)
            }
            .frame(width: containerWidth * 0.15)
            
            
            VStack(alignment: .center, spacing: 0) {
                Circle()
                    .frame(width: width, height: width)
                    .foregroundColor(.green)
                Rectangle()
                    .frame(width: width/4)
                    .foregroundColor(.green)
            }
            .frame(width: width*1.5)
            .background(.clear)
            
            
            VStack() {
                Text(entry.body)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

