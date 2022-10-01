//
//  ContentView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 15/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contactsStore = FetchedContacts()
    
    var body: some View {
        NavigationView {
            
            HStack {
                Text(contactsStore.contacts.count.description)
                    .font(Font.custom("Poppins-Medium", size: 16))
                    
                Text("contacts found")
                    .font(Font.custom("Lato-Regular", size: 12))
                
            }
            
//            List {
//                ForEach(contactsStore.contacts) { contact in
//                    DetailedContactView(contact: contact)
//                }
//            }
        }
    }
}
