//
//  AppleButton.swift
//  AwesomeFood
//
//  Created by NomoteteS on 27.12.2022.
//

import SwiftUI

struct AppleButton: View {
    var onTap: () -> Void
    var body: some View {
        HStack {
            Button {
                onTap()
            } label: {
                HStack {
                    Image(IconItems.Social.apple .rawValue)
                        .resizable()
                        .background(Color.white
                            .cornerRadius(20)
                            .frame(width: 40,height: 40)
                        )
                        .frame(width: 30, height: 30)
                        .padding(.trailing)
                    Text(LocaleKeys.Auth.apple.rawValue.locale())
                    
                }.tint(.white)
                    .font(.title2)
                    .padding(.all,PagePadding.All.normal.rawValue)
                
            } .background(Color.black)
                .controlSize(.large)
            .cornerRadius(RadiusItems.radius)
        }
    }
}

struct AppleButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleButton(onTap: {})
    }
}
