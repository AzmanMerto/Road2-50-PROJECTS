//
//  SearchView.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @State var inSearchMode = false
    
    var body: some View {
        ScrollView {
            // MARK: - SearchView searchBar
            SearchBar(text: $searchText,
                      isEditing: $inSearchMode)
                .padding()
            ZStack {
                if inSearchMode {
            // MARK: - SearchView Gridview
                    PostGridView()
                } else {
            // MARK: - SearchView User list view
                    UserListView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}



