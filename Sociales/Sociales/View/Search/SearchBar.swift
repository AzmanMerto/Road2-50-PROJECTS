//
//  SearchBar.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @Binding var isEditing : Bool
    
    var body: some View {
        HStack { 
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal)
                .background(Color.pink.opacity(0.3))
                .cornerRadius(8)
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                            .padding(.leading,8)
                    }
                }
            if isEditing {
                Button {
                    withAnimation {
                        isEditing = false
                        UIApplication.shared.endEditing()
                    }
                } label: {
                    Text("X")
                }
                .padding(.trailing, 8)
                .transition(.move(edge: .trailing))
            }
        }
        .onTapGesture {
            isEditing = true
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""), isEditing: .constant(false))
    }
}
