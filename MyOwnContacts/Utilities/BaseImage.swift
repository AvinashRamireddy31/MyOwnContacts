//
//  BaseImage.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 01/10/22.
//

import Foundation
import SwiftUI

public struct BaseImage: Codable {
    
    public let img: Data
    
    public init(img: UIImage) {
        self.img = img.pngData() ?? Data()
    }
}
