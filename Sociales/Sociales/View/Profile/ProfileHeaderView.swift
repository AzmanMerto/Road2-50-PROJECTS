//
//  ProfileHeaderView.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("testProfileImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                .clipShape(Circle())
                
                Spacer()
                
                HStack(alignment: .center ,spacing: 15) {
                    UserStateView()
                    UserStateView()
                    UserStateView()
                }
                .padding(.trailing)
            }
            HStack {
                // User Info
                VStack(alignment: .leading){
                    Text("Mert Türedü")
                        .font(.system(.subheadline, weight: .semibold))
                    Text("iOS developer")
                }
                .padding([.leading,.top])
                
                Spacer()
                
                // MARK: - ProfileHeaderView Editting
                Button {
                    // Will Be Action
                } label: {
                    Text("Edit Profile ")
                        .font(.system(.caption2,
                                      weight: .semibold))
                        .frame(width: .infinity)
                }
                .tint(.pink)
                .frame(height: 30)
                .padding(.trailing)
            }
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}


struct UserStateView: View {
    var body: some View {
        VStack {
            // Followers Count
            Text("2")
                .font(.system(.callout,
                              weight: .semibold))
            // Text
            Text("Followers")
                .font(.system(.callout))
        }
    }
}
