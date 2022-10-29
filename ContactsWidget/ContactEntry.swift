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
        let firstContact = ContactServices.shared.getFirstContact()
        
        return ContactEntry(date: .now, contact: firstContact)
    }
}

