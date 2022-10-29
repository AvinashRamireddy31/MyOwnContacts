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
            CalendarView()
//            CalendarView()
            //                        .onOpenURL { url in
            //                            guard url.scheme == "myOwnContacts" else { return }
            //                            print(url) // parse the url to get someAction to determine what the app needs do
            //                        }
        }
    }
}

//@main
//struct MyOwnContactsApp: App {
//    @State var linkActive = false
//
//    var body: some Scene {
//        WindowGroup {
//            NavigationView {
//                VStack {
//                    NavigationLink("Hey", destination: Text("Opened from Widget"), isActive: $linkActive)
//                    Text("Opened from App")
//                }
//            }
//            .onOpenURL { url in
//                print("url is \(url)")
//                guard url.scheme == "myOwnContacts" else { return }
//                linkActive = true
//            }
//        }
//    }
//}


