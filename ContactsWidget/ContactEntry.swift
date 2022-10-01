//
//  ContactEntry.swift
//  ContactsWidgetExtension
//
//  Created by Avinash Reddy on 01/10/22.
//

import WidgetKit

// Model
struct ContactEntry: TimelineEntry {
    let date: Date
    let contact: Contact
    
    static var placeHolderEntry: ContactEntry {
        let placeholderContact = Contact(imageName: Constants.personImageName, name: "John Doe", phoneNumber: "+916212345678")
        
        return ContactEntry(date: .now, contact: placeholderContact)
    }
}

