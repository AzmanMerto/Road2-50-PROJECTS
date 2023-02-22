//
//  UserListView.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0 ..< 20) { _ in
                    UserCell()
                        .padding(.leading)
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
