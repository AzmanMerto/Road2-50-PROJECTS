//
//  OnBoardViewModel.swift
//  AwesomeFood
//
//  Created by NomoteteS on 29.12.2022.
//

import Foundation

final class OnBoardViewModel: ObservableObject {
    @Published var currentIndex: Int = 0
    @Published var isHomeReiract: Bool = false
    
    private let cache = UserDefaultCache()
    
    private func isUserFirstLogin() -> Bool {
        return  cache.read(key: .onboard) .isEmpty
    }
    
    func checkUserFirstTime() {
        guard isUserFirstLogin() else {
            UpdateCacheFirstLogin()
            return
        }
        redirectToHome()
        
    }
    
    func saveUserLoginAndRedirect() {
        UpdateCacheFirstLogin()
        redirectToHome()
    }
    
    private func redirectToHome () {
        isHomeReiract = true
    }
    
    private func UpdateCacheFirstLogin()  {
        return  cache.save(key: .onboard, value: UserCacheKeys.dummyValue)
    }
    
    private func removeCacheFirstLogin()  {
        return  cache.remove(key: .onboard)
    }
}

