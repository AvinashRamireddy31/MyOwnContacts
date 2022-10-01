//
//  SwiftUiView.swift
//  ContactsWidgetExtension
//
//  Created by Avinash Reddy on 01/10/22.
//


import SwiftUI
import WidgetKit

struct ContactWidgetView : View {
    var entry: Provider.Entry

    var body: some View {
        ContactUIView()
    }
}
 
struct ContactUIView: View {
    var body: some View {
        ZStack {
            Color(red: 46/255, green: 50/255, blue: 71/255)
            VStack {
                Text("Hello Avinash!")
                    .font(Font.custom("Poppins-Medium", size: 16))
                    .foregroundColor(.white)
                Text("You have ready to work on widget")
                    .font(Font.custom("Lato-Regular", size: 12))
                    .foregroundColor(.white)
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .trailing
        )
    }
}
