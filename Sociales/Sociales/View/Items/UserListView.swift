//
//  UserListView.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct UserListView: View {
    
    @ObservedObject var viewModel: SearchViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(viewModel.users) { _ in
                    NavigationLink {
                        ProfileView()
                    } label: {
                        UserCell()
                            .padding(.leading)
                    }

                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView(viewModel: SearchViewModel())
    }
}
