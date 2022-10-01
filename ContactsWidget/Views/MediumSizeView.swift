//
//  MediumSizeView.swift
//  ContactsWidgetExtension
//
//  Created by Avinash Reddy on 01/10/22.
//

import SwiftUI
import WidgetKit

struct MediumSizeView: View {
    var entry: ContactEntry
    
    let firstContact = ContactServices.shared.getFirstContact()
    
    var body: some View {
        GroupBox(content: {
            Image(systemName: firstContact.imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.secondary)
            
            Divider()
            
            VStack(alignment: .center) {
                Text(firstContact.name)
                Text(firstContact.phoneNumber)
            } 
        }, label: {
            Text("Contacts")
        })
    }
}
//
//struct MediumSizeView_Previews: PreviewProvider {
//    static var previews: some View {
//        let firstContact = ContactServices.shared.getFirstContact()
//        
//        MediumSizeView(entry: ContactEntry(date: .now, contact: firstContact))
//    }
//}
