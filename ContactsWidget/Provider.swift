//
//  Provider.swift
//  ContactsWidgetExtension
//
//  Created by Avinash Reddy on 01/10/22.
//

import WidgetKit
import SwiftUI

//Provider
struct Provider: TimelineProvider {
    typealias Entry = ContactEntry
    
    func placeholder(in context: Context) -> ContactEntry {
        ContactEntry.placeHolderEntry
    }

    func getSnapshot(in context: Context, completion: @escaping (ContactEntry) -> ()) {
        let entry = ContactEntry.placeHolderEntry
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        let contact = ContactServices.shared.getFirstContact()
        let contactEntry = ContactEntry(date: .now, contact: contact)
        
        let timeline = Timeline(entries: [contactEntry], policy: .never)
        completion(timeline)
    }
}
