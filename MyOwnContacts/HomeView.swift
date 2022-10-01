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
    
    var body: some View {
        NavigationView{
            List(allContacts) { contact in
                NavigationLink(destination: ContactDetailsView(contact: contact)) {
                    ContactRow(contact: contact)
                }
            }
            .navigationTitle("Contacts")
        }
    }
    
    fileprivate func fetchAllContacts() async {
        let store = CNContactStore()
        
        let keys = [CNContactGivenNameKey, CNContactPhoneNumbersKey] as [CNKeyDescriptor]
        
        let fetchRequest = CNContactFetchRequest(keysToFetch: keys)
        
        do {
            try store.enumerateContacts(with: fetchRequest, usingBlock: { contact, result in
                print(contact.givenName)
            })
        }
        
        catch {
            print("Error fetching contacts")
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
