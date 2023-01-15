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
                ZStack {
                    RoundedRectangle(cornerRadius: RadiusItems.radius)
                        .foregroundColor(Color.black)
                        .frame(width: 360, height: 66)
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
                }
                
            }
        }
    }
}

struct AppleButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleButton(onTap: {})
    }
}
