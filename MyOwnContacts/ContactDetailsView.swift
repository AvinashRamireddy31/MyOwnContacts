//
//  ContactDetailsView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 01/10/22.
//

import SwiftUI
import Contacts

struct ContactDetailsView: View {
    var contact: Contact
    
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width:70,height: 70)
            Text(contact.name)
                .font(Font.custom("Poppins-Medium", size: 25))
            
            Text(contact.phoneNumber)
                .font(Font.custom("Lato-Regular", size: 25))
            
            Text(contact.id.uuidString)
                .font(Font.custom("Lato-Regular", size: 15))
            
            Spacer()
        }
    }
}
