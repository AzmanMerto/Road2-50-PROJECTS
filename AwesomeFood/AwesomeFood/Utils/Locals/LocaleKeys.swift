//
//  LocaleKeys.swift
//  AwesomeFood
//
//  Created by NomoteteS on 26.12.2022.
//

import SwiftUI

struct LocaleKeys {
    
    enum Auth: String {
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case custom = "signUpWtihEmail"
    }
    
    enum Buttons: String {
        case getStarted = "GetStarted"
    }
    
    enum General: String {
    case emailHint = "emailHint"
    case passwordHind = "passwordHint"
    }
    
    enum Login: String {
    case welcomeBack = "welcomeBack"
        case createAccound = "createAccount"
    case terms = "termsAndCondition"
    }
}

extension String {
    /// It localize any string from Localizable.stirng
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
