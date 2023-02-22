//
//  NotificationCell.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct NotificationCell: View {
    
    @State private var showPostImage = true
    
    var body: some View {
        HStack {
            // User Image
            Image("testProfileImage")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            // User Name
            Text("NomoteteS")
                .font(.system(.subheadline,
                              weight: .semibold))
                .foregroundColor(.pink)
            Text("liked one of your post")
                .font(.caption)
            Spacer()
            
            if showPostImage {
                Image("testPostImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
            } else {
                Button {
                    // Will be action
                } label: {
                    Text("Follow Back")
                        .tint(.white)
                        .font(.caption)
                        .padding(.horizontal,10)
                        .padding(.vertical,3)
                        .background(Color.pink.cornerRadius(40))
                }
            }
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
