//
//  ContactsWidget.swift
//  ContactsWidget
//
//  Created by Avinash Reddy on 15/09/22.
//

import WidgetKit
import SwiftUI


// Main Widget
@main
struct ContactsWidget: Widget {
    let kind: String = "ContactsWidget"
    
    var body: some WidgetConfiguration {
            StaticConfiguration(kind: kind, provider: Provider()) { entry in
                ContactWidgetView(entry: entry)
            }
            .configurationDisplayName("My Own Contacts")
            .description("Contacts on lockscreen")
            .supportedFamilies([.systemMedium, .systemSmall])
        }
}

struct ContactsWidget_Previews: PreviewProvider {
    static var previews: some View {
        let entry = ContactEntry(date: .now, contact: ContactServices.shared.getFirstContact())
        
        ContactWidgetView(entry: entry).previewContext(WidgetPreviewContext(family: .systemMedium))
        
        ContactWidgetView(entry: entry).previewContext(WidgetPreviewContext(family: .systemSmall))
          
    }
}
