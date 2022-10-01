//
//  ContentView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 15/09/22.
//

import SwiftUI
import Contacts

struct Contact: Identifiable {
    let imageName: String
    let name: String
    let phoneNumber: String
    let id = UUID()
} 

let allContacts = [
    Contact(imageName: "plus", name: "Avinash", phoneNumber: "12343241"),
    Contact(imageName: "heart.fill", name: "Sahithi", phoneNumber: "98734234"),
    Contact(imageName: "heart.fill", name: "Avinash", phoneNumber: "61234320"),

]
 
struct ContentView: View {
    
    var body: some View {
        NavigationView{
            List(allContacts) { contact in
                NavigationLink(destination: ContactDetailView(contact: contact)) {
                    ContactRow(contact: contact)
                }
            }
            
        }.navigationTitle("Contacts")
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
    static var previews: some View{
        ContentView()
    }
}

struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
         ContactDetailView(contact: contact)
    }
}
