//
//  Contact.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 01/10/22.
//

import Foundation
import SwiftUI
import UIKit
import Intents

struct Contact: Identifiable, Codable  {
    
    var id = UUID()
    var firstName: String
    var lastName: String
    var phoneNumbers: [String]
    let image: BaseImage
    let thumbnailImage: BaseImage
    
    var swiftUIImage: Image {
        return Image(uiImage: UIImage(data: image.img) ?? UIImage())
    }
    
    var swiftUIThumbnailImage: Image {
        return Image(uiImage: UIImage(data: thumbnailImage.img) ?? UIImage())
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
