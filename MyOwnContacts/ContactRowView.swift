//
//  ContactDetailView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 01/10/22.
//

import SwiftUI

struct ContactRowView: View {
    let contact: Contact
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(width:50,height: 50)
            VStack(alignment: .leading, content: {
                Text(contact.name)
                    .font(Font.custom("Poppins-Medium", size: 16))
                     
                Text(contact.phoneNumber)
                    .font(Font.custom("Lato-Regular", size: 12)) 
            })
        }
    }
}
 
