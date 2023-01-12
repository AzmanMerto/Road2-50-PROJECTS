//
//  Images.swift
//  AwesomeOnboarding
//
//  Created by NomoteteS on 26.12.2022.
//

import Foundation
import SwiftUI

enum Images: String {
    case pizza = "img_pizza"
}
 
struct ImagesType {
    
    enum Auth: String {
    case Wolcano = "img_wolcano"
    }
}

extension String {
    
    /// string path to image
    /// - Returns: realeted image from image assets
    func image() -> Image {
        
        return Image(self)
    }
}
