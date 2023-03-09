//
//  UserCell.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI
import Kingfisher

struct UserCell: View {
    
    let user: User
    
    var body: some View {
        HStack {
            //MARK: - Usercell Image
            KFImage(URL(string: user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 48,height: 48)
                .clipShape(Circle())
            //MARK: - Usercell Username & Fullname
            VStack(alignment: .leading) {
                Text(user.username)
                    .font(.system(.subheadline,weight: .semibold))
                
                Text(user.fullname)
                    .font(.system(.caption))
            }
            .foregroundColor(.pink)
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(user: User(username: "", email: "", profileImageUrl: "", fullname: ""))
    }
}
