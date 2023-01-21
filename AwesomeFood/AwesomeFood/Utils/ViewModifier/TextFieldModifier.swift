//
//  TextFieldModifier.swift
//  AwesomeFood
//
//  Created by NomoteteS on 29.12.2022.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content .padding()
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
                     
            ).padding()
            .foregroundColor(Color.gray)
    }
}

