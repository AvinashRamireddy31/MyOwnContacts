//
//  MediumSizeView.swift
//  ContactsWidgetExtension
//
//  Created by Avinash Reddy on 01/10/22.
//

import SwiftUI
import WidgetKit

struct MediumSizeView: View {
    var entry: SimpleEntry
    
    var body: some View {
        GroupBox(content: {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .foregroundColor(.secondary)
            
            Divider()
            
            VStack(alignment: .center) {
                Text("First rows")
                Text("Second row")
            }
            
        }, label: {
            Label("Contacts", image: "list.dash")
        })
        .widgetURL(URL(string: "myowncontacts://todo/1"))
    }
}
