//
//  AuthViewModel.swift
//  Sociales
//
//  Created by NomoteteS on 4.03.2023.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login() {
        
    }
    
    func regsiter(withEmail email: String,password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error  in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
        }
    }
    
    func signOut() {
        
    }
    
    func resetPassword() {
        
    }
    
    func fetchUser() {
        
    }
    
}
