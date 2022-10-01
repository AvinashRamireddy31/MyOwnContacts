//
//  ContactServices.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 01/10/22.
//

import Foundation

final class ContactServices {
    static let shared = ContactServices()
    
    
    func getAllContacts() -> [Contact] {
        let allContacts = [
            Contact(imageName: Constants.rectImageName, name: "Sahithi Reddy", phoneNumber: "+919916705330"),
            Contact(imageName: Constants.rectImageName, name: "Balu", phoneNumber: "+916281226386")
        ]
        
        return allContacts
    }
    
    func getFirstContact() -> Contact {
        return getAllContacts().first!
    }
}
