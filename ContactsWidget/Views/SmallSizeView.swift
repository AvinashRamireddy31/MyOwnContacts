//
//  SmallSizeView.swift
//  ContactsWidgetExtension
//
//  Created by Avinash Reddy on 01/10/22.
//

import SwiftUI

struct SmallSizeView: View {
    var entry: ContactEntry
    
    private var firstContact: Contact
    init(entry: ContactEntry) {
        self.entry = entry
        self.firstContact = ContactServices.shared.getFirstContact()
        var widgetUrl = URL(string: "myOwnContacts://\(self.firstContact.id)")
        
        print("widget url is \(widgetUrl?.absoluteString)")
    }
    

    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .bottom) {
                Image(systemName: firstContact.imageName)
                    .resizable()
                    .frame(width: geo.size.width, height: geo.size.height)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.red)
                 
                VStack {
                    Text(firstContact.name)
                }.padding()
            }
        }.widgetURL(URL(string:"myOwnContacts://\(self.firstContact.id)"))
    }
}


//
//struct SmallSizeView_Previews: PreviewProvider {
//    static var previews: some View {
//        let firstContact = ContactServices.shared.getFirstContact()
//        VStack {
//            SmallSizeView(entry: ContactEntry(date: .now, contact: firstContact))
//        }
//    }
//}
