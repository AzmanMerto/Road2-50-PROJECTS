//
//  LoginView.swift
//  Sociales
//
//  Created by NomoteteS on 23.02.2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.pink]),
                                       startPoint: .top,
                                       endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Sociales")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Spacer()
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
