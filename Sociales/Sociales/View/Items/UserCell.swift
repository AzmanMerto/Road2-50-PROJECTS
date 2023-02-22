//
//  UserCell.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            //MARK: - Usercell Image
            Image("testProfileImage")
                .resizable()
                .scaledToFill()
                .frame(width: 48,height: 48)
                .clipShape(Circle())
            //MARK: - Usercell Username & Fullname
            VStack(alignment: .leading) {
                Text("NomoteteS")
                    .font(.system(.subheadline,weight: .semibold))
                
                Text("Mert Türedü")
                    .font(.system(.caption))
            }
            .foregroundColor(.pink)
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
