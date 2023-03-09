//
//  ProfileHeaderView.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI
import Kingfisher

struct ProfileHeaderView: View {
    
    var user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                KFImage(URL(string: user.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                .clipShape(Circle())
                Spacer()
                HStack(alignment: .center ,spacing: 15) {
                    UserStateView(value: 0, title: "Post")
                    UserStateView(value: 0, title: "Followers")
                    UserStateView(value: 0, title: "Followed")
                }
                .padding(.trailing)
            }
            HStack {
                // User Info
                VStack(alignment: .leading){
                    Text(user.fullname)
                        .font(.system(.subheadline, weight: .semibold))
                    Text("iOS developer")
                }
                .padding([.leading,.top])
                Spacer()
                ProfileActionButtonView(isCurrentUser: user.isCurrentUser)
            }
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User(username: "", email: "", profileImageUrl: "", fullname: ""))
    }
}
