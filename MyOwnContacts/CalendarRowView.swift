//
//  CalendarRowView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 29/10/22.
//

import SwiftUI

struct CalendarRowView: View {
    var entry: CalendarEntry
    
    var body: some View {
        let containerWidth:CGFloat = UIScreen.main.bounds.width
            HStack(alignment: .top, spacing: 0) {
                VStack() {
                    Text(entry.heading)
                    Text(entry.timezone)
                }
                .frame(width:containerWidth * 0.15)
//                .background(.green)
                
                
                VStack() {
                    Text(entry.body)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
//                .background(.yellow)
                    
            
        }
        
    }
    
//    var body: some View {
//        let containerWidth:CGFloat = UIScreen.main.bounds.width
//        let fixedWidth: CGFloat = 10
//        HStack(alignment: .top) {
//            //Date & Time
//            VStack(alignment: .center) {
//                Text(entry.heading).foregroundColor(.red)
//                Text(entry.timezone).foregroundColor(.yellow)
//            }.frame(width: containerWidth * 0.1)
//                .background(.orange)
//
//            //Separator
//            VStack(alignment: .center,spacing: 0) {
//                Circle().frame(width: fixedWidth,height: fixedWidth).foregroundColor(.purple)
//                Rectangle().frame(width:fixedWidth/4)
//            }.frame(width: fixedWidth)
//                .background(.purple)
//
//
//            //Description
//            VStack(alignment: .leading) {
//                Text(entry.body).foregroundColor(.green)
//            }.frame(width: (containerWidth * 0.8))
//            .background(.red)
//        }.background(.green)
//    }
}
 
