//
//  FacebookButton.swift
//  AwesomeFood
//
//  Created by NomoteteS on 26.12.2022.
//

import SwiftUI


struct FacebookButton: View {
    var onTap: () -> Void
    var body: some View {
        VStack {
            Button {
                onTap()
            } label: {
                HStack {
                    Image(IconItems.Social.facebook .rawValue)
                        .resizable()
                        .background(Color.white
                            .cornerRadius(20)
                            .frame(width: 40,height: 40)
                        )
                        .frame(width: 30, height: 30)
                        .padding(.trailing)
                    Text(LocaleKeys.Auth.facebook.rawValue.locale())
                    
                }.tint(.white)
                    .font(.title2)
                    .padding(.all,PagePadding.All.normal.rawValue)
                
            } .background(Color.deepSkyBlue)
                .controlSize(.large)
            .cornerRadius(RadiusItems.radius)
        }
    }
}

struct FacebookButton_Previews: PreviewProvider {
    static var previews: some View {
        FacebookButton(onTap: {})
    }
}
