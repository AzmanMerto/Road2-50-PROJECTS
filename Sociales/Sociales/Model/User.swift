//
//  User.swift
//  Sociales
//
//  Created by NomoteteS on 9.03.2023.
//

import FirebaseFirestoreSwift

struct User: Identifiable,Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
    
    var isCurrentUser: Bool { return AuthViewModel.shared.userSession?.uid == id}
}
