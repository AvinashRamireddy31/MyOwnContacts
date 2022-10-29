//
//  SmallSizeView.swift
//  ContactsWidgetExtension
//
//  Created by Avinash Reddy on 01/10/22.
//

import SwiftUI

struct SmallSizeView: View {
    var entry: ContactEntry
    
    private var widgetUrl: URL?
    
    init(entry: ContactEntry) {
        self.entry = entry
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
        }.widgetURL(URL(string:"myOwnContacts://\(self.entry.contact.name)"))
    }
}
