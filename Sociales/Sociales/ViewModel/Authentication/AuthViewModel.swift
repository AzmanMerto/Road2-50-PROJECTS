//
//  AuthViewModel.swift
//  Sociales
//
//  Created by NomoteteS on 4.03.2023.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore


class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    func login(withEmail email: String,
               password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Error\(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
        }
    }
    
    func regsiter(withEmail email: String,
                  password: String,
                  image: UIImage?,
                  fullname: String,
                  username: String) {
        
        guard let image = image else { return }
        
        ImageUploader.uploadImage(image: image) { imageUrl in
            Auth.auth().createUser(withEmail: email, password: password) { result, error  in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                guard let user = result?.user else { return }
                
                let data = ["email" : email,
                            "username": username,
                            "fullname": fullname,
                            "profileImageUrl": imageUrl,
                            "uid": user.uid]
                
                COLLECTION_USERS.document(user.uid).setData(data) { _ in
                    self.userSession = user
                }
            }
        }
    }
    
    func signOut() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func resetPassword() {
        
    }
    
    func fetchUser() {
        guard let uid = userSession?.uid else { return }
        COLLECTION_USERS.document(uid).getDocument { snapshot, _ in
                guard let user = try? snapshot?.data(as: User.self) else { return }
        }
    }
}
