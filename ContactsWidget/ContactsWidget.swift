//
//  ContactsWidget.swift
//  ContactsWidget
//
//  Created by Avinash Reddy on 15/09/22.
//

import WidgetKit
import SwiftUI


// Model
struct SimpleEntry: TimelineEntry {
    let date: Date
}


//Provider
struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}


// Widget View
struct ContactsWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        ContactUIView()
    }
}


// Main Widget
@main
struct ContactsWidget: Widget {
    let kind: String = "ContactsWidget"
    
    var body: some WidgetConfiguration {
            StaticConfiguration(kind: kind, provider: Provider()) { entry in
                ContactsWidgetEntryView(entry: entry)
            }
            .configurationDisplayName("Migraine Buddy")
            .description("Track Headhache & Pain.")
            .supportedFamilies([.systemMedium])
        }
}
