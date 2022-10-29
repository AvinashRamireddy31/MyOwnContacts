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
            Contact(id: UUID(), imageName: Constants.rectImageName, name: "Sahithi Reddy", phoneNumber: "+919916705330"),
            Contact(id: UUID(), imageName: Constants.rectImageName, name: "Balu", phoneNumber: "+916281226386"),
            Contact(id: UUID(), imageName: Constants.rectImageName, name: "Avinash", phoneNumber: "+919986250809"),
            Contact(id: UUID(), imageName: Constants.rectImageName, name: "XYZ", phoneNumber: "+919986250809")
        ]
        
        return allContacts
    }
    
    func getFirstContact() -> Contact {
        return getAllContacts()[0]
    }
}
