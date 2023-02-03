//
//  ResultFilmsRectengle.swift
//  Moviee
//
//  Created by NomoteteS on 3.02.2023.
//

import SwiftUI

struct ResultFilmsRectengle: View {
    
    @State var uIImage : UIImage
    @State var title : String
    @State var price : String
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                StyleHelper(cornerRadius: 10, strokeColor: ColorHelper.customOrange.rawValue, strokeLineWidth: 2, frameWidth: UIScreen.main.bounds.width * 0.42, frameHeight: UIScreen.main.bounds.height * 0.3)
                VStack(spacing: 0) {
                    Image(uiImage: uIImage)
                        .resizable()
                        .frame(height: UIScreen.main.bounds.height * 0.2)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: UIScreen.main.bounds.height * 0.1)
                            .foregroundColor(Color(ColorHelper.customSoftDark.rawValue))
                        
                        Text(title)
                            .frame(width: UIScreen.main.bounds.width * 0.4)
                            .font(.callout)
                            .foregroundColor(Color(ColorHelper.customOrange.rawValue))
                            .bold()
                            .multilineTextAlignment(.center)
                        
                    }
                        
                        
                    
                }.frame(width: UIScreen.main.bounds.width * 0.42,
                        height: UIScreen.main.bounds.height * 0.3)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(ColorHelper.customOrange.rawValue))
                    .frame(width: UIScreen.main.bounds.width * 0.20,
                           height: UIScreen.main.bounds.height * 0.05)
                    .background {
                        Color(ColorHelper.customSoftDark.rawValue)
                            .cornerRadius(10)
                    }
                
                Text(price)
                    .foregroundColor(Color(ColorHelper.customGreen.rawValue))
                    .bold()
                    
            }
        }
        .padding()
    }
}

struct ResultFilmsRectengle_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            ViewsBackground()
            HStack {
                ResultFilmsRectengle(uIImage: UIImage(named: ImageHelper.Views.noneSelectedImage.rawValue)!, title: "",price: "")
            }
            .padding()
        }
    }
}
