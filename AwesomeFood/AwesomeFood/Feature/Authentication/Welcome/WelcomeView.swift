//
//  WelcomeView.swift
//  AwesomeOnboarding
//
//  Created by NomoteteS on 26.12.2022.
//

import SwiftUI



struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image(Images.pizza.rawValue)
                .ignoresSafeArea()
                .scaledToFill()
            Color.black.opacity(0.2)
            BodyView()
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Image(IconItems.Core.appLogo.rawValue)
                    .resizable()
                    .background(Color.black.cornerRadius(40).opacity(0.6).frame(height: 120))
                    .frame(width: 290,height: 145)
                
                Spacer()
                VStack {
                    FacebookButton(onTap: {}).padding(Edge.Set.top, 40)
                    GoogleButton(onTap: {})
                    AppleButton(onTap: {})
                }.padding(.bottom)
                
                Divider()
                    .frame(
                        height: DividerViewSize.normal).padding(.horizontal,PagePadding.Horizontal.normal.rawValue)
                    .background(Color.peach)
                    
                   EmailButton(onTap: {})
                    
                Spacer().frame(height: geometry.dh(height: 0.1))
            }.padding(.paddingAll)
        }
    }
}

