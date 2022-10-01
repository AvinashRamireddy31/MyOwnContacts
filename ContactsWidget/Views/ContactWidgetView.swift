//
//  SwiftUiView.swift
//  ContactsWidgetExtension
//
//  Created by Avinash Reddy on 01/10/22.
//


import SwiftUI
import WidgetKit

struct ContactWidgetView : View {
    
    @Environment(\.widgetFamily) var widgetFamily
    
    var entry: Provider.Entry

    var body: some View {
        switch widgetFamily {
        case .systemSmall:
            SmallSizeView(entry: entry)
        case .systemMedium:
            MediumSizeView(entry: entry)
        
        default:
            Text("Not Required as we are handling supported families")
        }
    }
}
