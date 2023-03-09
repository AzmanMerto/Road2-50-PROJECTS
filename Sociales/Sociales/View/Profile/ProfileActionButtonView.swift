//
//  ProfileActionButtonView.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct ProfileActionButtonView: View {
    
    let isCurrentUser : Bool
    var isFollowed = false
    
    var body: some View {
        // MARK: - ProfileActionButtonView Buttons
        if isCurrentUser {
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
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray,
                            lineWidth: 1)
            }
        } else {
            // Fallow Button
            HStack {
                Button {
                    // Will Be Action
                } label: {
                    Text(isFollowed ? "Following" : "Follow")
                        .font(.system(.caption2,
                                      weight: .semibold))
                        .frame(width: .infinity)
                }
                .tint(isFollowed ? .green : .pink)
                .frame(height: 30)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray,
                                lineWidth: isFollowed ? 1 : 0)
                }
                // Massage Button
                Button {
                    // Will Be Action
                } label: {
                    Text("Massage")
                        .font(.system(.caption2,
                                      weight: .semibold))
                        .frame(width: .infinity)
                }
                .tint(.pink)
                .frame(height: 30)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray,
                                lineWidth: isFollowed ? 1 : 0)
                }
            }
        }
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentUser: false)
    }
}
