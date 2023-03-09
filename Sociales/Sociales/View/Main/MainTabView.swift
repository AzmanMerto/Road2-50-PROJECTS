//
//  MainTabView.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct MainTabView: View {
    
    let user: User
    
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            UploadPostView()
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            NotificationView()
                .tabItem {
                    Image(systemName: "heart")
                }
            
            ProfileView(user: user)
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .tint(.black)
    }
    
    var logOutButton: some View {
        Button {
            AuthViewModel.shared.signOut()
        } label: {
            Text("Logout")
                .foregroundColor(.black)
        }

    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(user: User(username: "", email: "", profileImageUrl: "", fullname: ""))
    }
}
