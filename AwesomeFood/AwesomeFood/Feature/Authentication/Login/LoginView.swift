//
//  LoginView.swift
//  AwesomeFood
//
//  Created by NomoteteS on 28.12.2022.
//

import SwiftUI
import Foundation

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
            ImagesType.Auth.Wolcano.rawValue.image()
            Text(LocaleKeys.Login.welcomeBack.rawValue.locale())
                .font(.system(size: FontSizes.title, weight: .bold))
                .foregroundColor(Color.secondary)
            
            HTextIconField(hint: LocaleKeys.General.emailHint.rawValue.locale(), iconName: "mail")
            
            HTextSecureIconField(hint: LocaleKeys.General.passwordHind.rawValue.locale(), iconName: "lock")
                .padding(.top,PagePadding.All.normal.rawValue)
            
            Divider().background(Color.peach)
            
            NormalButton(onTap: {
                
            }, title: LocaleKeys.Login.createAccound.rawValue)
            
            Text(LocaleKeys.Login.terms.rawValue.locale())
                .environment(\.openURL, OpenURLAction(handler: { URL in
                    print(URL)
                    return  .discarded
                }))
            Spacer()
        }.padding(.all,PagePadding.All.normal.rawValue)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

private struct HTextIconField: View {
    let hint: LocalizedStringKey
    let iconName: String
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(.gray)
            TextField(hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}


private struct HTextSecureIconField: View {
    let hint: LocalizedStringKey
    let iconName: String
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(.gray)
            SecureField(hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}
