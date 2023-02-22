//
//  FeedCell.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .center) {
            // MARK: FeedCell User Info
            HStack {
                // User Image
                Image("testProfileImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36,
                           height: 36)
                    .clipped()
                    .cornerRadius(18)
                // User Name
                Text("NomoteteS")
                    .font(.system(.subheadline ,
                                  weight: .semibold))
                    .foregroundColor(.pink)
            }
            .background{
                RoundedRectangle(cornerRadius: 18)
                    .stroke(Color.orange,lineWidth: 5)
                    .frame(width: 150, height: 50 )
            }
            .padding(.init(top: 20, leading: 50, bottom:10, trailing: 50))
            // MARK: FeedCell PostImage
            Image("testPostImage")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            // MARK: FeedCell Action Buttons
            HStack(spacing: 8) {
                // Like
                Button {
                    // Will be action
                } label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 16))
                        .padding(4)
                }
                .padding(4)
                Button {
                    // Will be action
                } label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                }
                // Share
                Button {
                    // Will be action
                } label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                }
            }
            .tint(.pink)
        }
        .scaledToFit()
            // MARK: FeedCell Caption
        .font(.system(.caption2))
            VStack(alignment: .leading) {
                HStack {
                    // User Name
                    Text("NomoteteS")
                        .font(.system(.subheadline,
                                      weight: .semibold))
                        .foregroundColor(.pink)
                    Text("My first post LETS GOOO")
                        .font(.callout)
                }
                // Post Time
                Text("2d")
                    .font(.system(.caption2))
                    .foregroundColor(.gray)
                    .padding(.top,5)
            }
            .padding(.leading)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
