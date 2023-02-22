//
//  UserStateView.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct UserStateView: View {
    
    let value : Int
    let title : String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.callout)
            
            Text(title)
                .font(.system(.callout,weight: .semibold))
        }
    }
}

struct UserStateView_Previews: PreviewProvider {
    static var previews: some View {
        UserStateView(value: 1, title: "Post")
    }
}
