//
//  ContentView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 15/09/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var allContacts = ContactServices.shared.getAllContacts()
    @State private var contactsStack:[Contact] = []
    
    var body: some View {
        NavigationStack {
            List(allContacts) { contact in
                NavigationLink(value: contact) {
                    ContactRowView(contact: contact)
                }
            }
            .navigationTitle(Text("Contacts"))
            .navigationDestination(for: Contact.self) {contact in
                ContactDetailsView(contact: contact)
            }
        }
    }
}
 
