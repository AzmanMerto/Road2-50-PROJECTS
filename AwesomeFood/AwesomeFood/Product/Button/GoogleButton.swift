//
//  GoogleButton.swift
//  AwesomeFood
//
//  Created by NomoteteS on 26.12.2022.
//

import SwiftUI

struct GoogleButton: View {
    var onTap: () -> Void
    var body: some View {
        Button {
            onTap()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: RadiusItems.radius)
                    .foregroundColor(Color.white)
                    .frame(width: 360, height: 66)
                HStack {
                    Image(IconItems.Social.google .rawValue)
                        .resizable()
                        .background(Color.white
                            .cornerRadius(20)
                            .frame(width: 40,height: 40)
                        )
                        .frame(width: 30, height: 30)
                        .padding(.trailing)
                    Text(LocaleKeys.Auth.google.rawValue.locale())
                    
                }.tint(.black)
                    .font(.title2)
                    .padding(.all,PagePadding.All.normal.rawValue)
                   
            }
            
        }
    }
}

struct GoogleButton_Previews: PreviewProvider {
    static var previews: some View {
        GoogleButton(onTap: {})
            .preferredColorScheme(.dark)
    }
}
