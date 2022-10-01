//
//  ContactDetailView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 01/10/22.
//

import SwiftUI

struct ContactDetailView: View {
    let contact: Contact
    
    var body: some View {
        HStack{
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

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: allContacts[0])
            .padding(.top,60)
    }
}
