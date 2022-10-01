//
//  ContactServices.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 01/10/22.
//

import Foundation

import SwiftUI
import Contacts

class FetchedContacts: ObservableObject, Identifiable {
    
    @Published var contacts = [Contact]()
    
    func fetchContacts() {
        contacts.removeAll()
        
        let contactStore = CNContactStore()
        contactStore.requestAccess(for: .contacts) { (granted, error) in
            if let error = error {
                print("failed to request access", error)
                return
            }
            if granted {
                 
                let keys = [
                    CNContactImageDataKey,
                    CNContactImageDataAvailableKey,
                    CNContactThumbnailImageDataKey,
                    CNContactGivenNameKey,
                    CNContactFamilyNameKey,
                    CNContactPhoneNumbersKey,
                    CNContactEmailAddressesKey
                ]
                let request = CNContactFetchRequest(keysToFetch: keys as [CNKeyDescriptor])
                do {
                    try contactStore.enumerateContacts(with: request, usingBlock: { (contact, stopPointer) in
                        
                        let thumbnailImage = BaseImage(img: UIImage(data: contact.imageData ?? Data()) ?? UIImage())
                        let contactImage = BaseImage(img: UIImage(data: contact.imageData ?? Data()) ?? UIImage())
                        let contact = Contact(firstName: contact.givenName,
                                              lastName: contact.familyName,
                                              phoneNumbers: contact.phoneNumbers.map { $0.value.stringValue },
                                              image: contactImage,
                                              thumbnailImage: thumbnailImage)
                        
                        self.contacts.append(contact)
                        self.contacts.sort(by: { $0.firstName < $1.firstName })
                    })
                     
                    
                } catch let error {
                    print("Failed to enumerate contact", error)
                }
                
            } else {
                print("access denied")
            }
        }
    }
}

