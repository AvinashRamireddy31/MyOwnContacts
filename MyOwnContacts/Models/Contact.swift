//
//  Contact.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 01/10/22.
//

import Foundation

struct Contact: Identifiable, Hashable {
    let id: UUID
    let imageName: String
    let name: String
    let phoneNumber: String
    
}
