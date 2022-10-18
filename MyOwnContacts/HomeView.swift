//
//  ContentView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 15/09/22.
//

import SwiftUI

var allContacts = ContactServices.shared.getAllContacts()

struct HomeView: View {
    
    @State var activeUUID: UUID?
    
    var body: some View {
        NavigationView{
            
            List(allContacts) { contact in
                
                NavigationLink(destination: ContactDetailsView(contact: contact), tag: contact.id, selection: $activeUUID) {
                    ContactRow(contact: contact)
                }
            }
            .navigationTitle(Text("Home"))
            .onOpenURL { url in
                print("url is \(url)")
                if let host = url.host, let uuid = UUID(uuidString: host) {
                    
//                    let firstContact = ContactServices.shared.getFirstContact()
//                    print("first contact id \(firstContact.id)")
//                    activeUUID = firstContact.id
                    
                    activeUUID = uuid
                    
                    
                    
                }
                
            }
        }
    }
}

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        ContactRowView(contact: contact)
    }
}
