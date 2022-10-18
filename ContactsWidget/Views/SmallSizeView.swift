//
//  SmallSizeView.swift
//  ContactsWidgetExtension
//
//  Created by Avinash Reddy on 01/10/22.
//

import SwiftUI

struct SmallSizeView: View {
    var entry: ContactEntry
    
//    private var firstContact: Contact
    private var widgetUrl: URL?
    
    init(entry: ContactEntry) {
        self.entry = entry
//        self.firstContact = ContactServices.shared.getFirstContact()
        self.widgetUrl = URL(string:"myOwnContacts://\(self.entry.contact.id)")
    }

    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .bottom) {
                Image(systemName: entry.contact.imageName)
                    .resizable()
                    .frame(width: geo.size.width, height: geo.size.height)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.red)
                 
                VStack {
                    Text(entry.contact.name)
                    
                }.padding()
            }
        }.widgetURL(self.widgetUrl)
    }
}
