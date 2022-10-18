//
//  MyOwnContactsApp.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 15/09/22.
//

import SwiftUI

@main
struct MyOwnContactsApp: App {
    @State var linkActive = false
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                VStack {
                    NavigationLink("", destination: Text("Opened from Widget"), isActive: $linkActive).hidden()
                    Text("Opened from App")
                }
            }
            .onOpenURL { url in
                print("url is \(url)")
                guard url.scheme == "myOwnContacts" else { return }
                linkActive = true
            }
        }
    }
}


