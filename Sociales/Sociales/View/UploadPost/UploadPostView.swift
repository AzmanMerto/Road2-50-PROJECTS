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
    @State var imagePickerPresented = false
    
    var body: some View {
        VStack {
            if postImage == nil {
                Button {
                    imagePickerPresented.toggle()
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
                .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage) {
                    ImagePicker(image: $selectedImage)
                }
            } else if let image = postImage{
                HStack(alignment: .top) {
                    image
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

extension UploadPostView {
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        postImage = Image(uiImage: selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
