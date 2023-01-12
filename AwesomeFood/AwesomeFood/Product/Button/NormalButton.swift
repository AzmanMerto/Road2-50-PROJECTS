//
//  NormalButton.swift
//  AwesomeFood
//
//  Created by NomoteteS on 27.12.2022.
//

import SwiftUI

/// Its a normal button for project
///
/// [onTap] will return user interaction
/// [title] it show button name 
struct NormalButton: View {
    var onTap: () -> Void
    var title : String
    var body: some View {
        HStack {
            Button {
                onTap()
            } label: {
                HStack {
                    Spacer()
                    Text(title.locale())
                    Spacer()
                }.tint(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.all,PagePadding.All.normal.rawValue)
                
            } .background(Color.peach)
                .controlSize(.large)
                .cornerRadius(RadiusItems.radius)
        }
    }
}

struct NormalButton_Previews: PreviewProvider {
    static var previews: some View {
        NormalButton(onTap: {}, title: "Sample")
    }
}
