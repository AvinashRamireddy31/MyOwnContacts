//
//  DetailedContactView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 01/10/22.
//

import Foundation
import SwiftUI

struct DetailedContactView: View {
    
    var contact: Contact
    
    var body: some View {
        HStack(alignment: .top, spacing: 5) {
//            let defaultImgColor = UIImage(color: UIColor.secondaryLabel.withAlphaComponent(0.2))
//            let picture = contact.imageDataAvailable ? contact.image : Image(uiImage: defaultImgColor!) //TODO: Handle force unwrap
            contact.swiftUIThumbnailImage
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 5) {
                Text(contact.firstName + " " + contact.lastName).bold()
                Text(contact.phoneNumbers.first ?? "").italic()
            }
            //            ForEach(contact.phoneNumbers, id:\.self) { number in
            //                Text(number)
            //            }
            //            ForEach(contact.emailAddresses, id:\.self) { email in
            //                Text(email)
            //            }
            Spacer() //Empty space for the remaining
        }
        .contentShape(Rectangle())//This makes space clickable
    }
}


