//
//  ContentView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 15/09/22.
//

import SwiftUI
import Contacts

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
                
                print("Url is \(url)")
                if let host = url.host, let uuid = UUID(uuidString: host) {
                    let selectedContact = allContacts.first(where: { i in i.name.lowercased() == "XYZ".lowercased()})
                    print("host uuid is \(uuid)")
                    activeUUID = selectedContact?.id
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        ContactRowView(contact: contact)
    }
}
