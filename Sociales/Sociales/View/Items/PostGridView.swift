//
//  PostGridView.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct PostGridView: View {
    
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: items,spacing: 2) {
            ForEach(0 ..< 10) { _ in
                NavigationLink {
                    FeedView()
                } label: {
                    Image("testPostImage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: width, height: width)
                }

            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
