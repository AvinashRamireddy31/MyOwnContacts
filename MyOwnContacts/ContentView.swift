//
//  ContentView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 15/09/22.
//

import SwiftUI
import Contacts
 
struct ContentView: View {
    
    var body: some View {
        Text("Hello world")
            .padding()
            .onAppear() {
                Task {
                   await self.fetchAllContacts()
                }
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


