//
//  UploadPostView.swift
//  Sociales
//
//  Created by NomoteteS on 22.02.2023.
//

import SwiftUI

struct UploadPostView: View {
    
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    
    var body: some View {
        VStack {
            if postImage == nil {
                Button {
                    // Will be action
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180,
                               height: 180)
                        .clipped()
                        .padding(.top,56)
                        .foregroundColor(.red)
                }
            } else {
                HStack(alignment: .top) {
                    Image("testPostImage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96,
                               height: 96)
                    
                    TextField("Enter your caption", text: $captionText)
                }
                .padding()
                
                Button {
                    // Will be action
                } label: {
                    Text("Share")
                        .font(.system(.caption,
                                      weight: .semibold))
                        .frame(width: 360,
                               height: 50)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                .padding()
            }
            Spacer()
        }
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
