//
//  SmallSizeView.swift
//  ContactsWidgetExtension
//
//  Created by Avinash Reddy on 01/10/22.
//

import SwiftUI

struct SmallSizeView: View {
    var entry: ContactEntry
    
    let firstContact = ContactServices.shared.getFirstContact()
    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .bottom) {
                Image(systemName: firstContact.imageName)
                    .resizable()
                    .frame(width: geo.size.width, height: geo.size.height)
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.red)
                 
                VStack {
                    Text(firstContact.name)
                }.padding()
            }
        }
    }
}


//
//struct SmallSizeView_Previews: PreviewProvider {
//    static var previews: some View {
//        let firstContact = ContactServices.shared.getFirstContact()
//        VStack {
//            SmallSizeView(entry: ContactEntry(date: .now, contact: firstContact))
//        }
//    }
//}
