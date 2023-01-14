//
//  EmailButton.swift
//  AwesomeFood
//
//  Created by NomoteteS on 27.12.2022.
//

import SwiftUI

struct EmailButton: View {
    var onTap: () -> Void
    var body: some View {
        HStack {
            Button {
                onTap()
            } label: {
                HStack {
                    Text(LocaleKeys.Auth.custom.rawValue.locale())
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


struct EmailButton_Previews: PreviewProvider {
    static var previews: some View {
        EmailButton(onTap: {})
    }
}
