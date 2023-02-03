//
//  AddMovieButton.swift
//  Moviee
//
//  Created by NomoteteS on 28.01.2023.
//

import SwiftUI

struct AddMovieButton: View {
    
    /// DataManager
    private var dataManager = DataController()
    @Environment(\.managedObjectContext) var managedObjContext
    
    @StateObject var vmm : ViewModelManager = .init(UIImage())
  
    
    var body: some View {
                Button {
                    /// Check value is empty
                    let status = (vmm.movieName.count > 0 && vmm.moviePrice.count > 0)
                    /// image dolu ise yanıst yanlış işe yani yok ise default değeri yansıt
                    let image = vmm.movieUIImage.toPngString()
                    if status {
                        dataManager.addMovie(movieName: vmm.movieName , price: vmm.moviePrice, movieImage: image ?? "", context: managedObjContext)

                    } else {
                      
                    }
                } label: {
                    HStack {
                        Spacer()
                        
                        Image(systemName: ImageHelper.Icons.upload.rawValue)
                            .font(.system(size: UIScreen.main.bounds.height * 0.046))
                        
                        Spacer()
                        
                        Text(TextHelper.Button.addMovie.rawValue.locale())
                            .font(.system(size: UIScreen.main.bounds.height * 0.024,weight: .black))
                        
                        Spacer()
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.7,
                           height: UIScreen.main.bounds.height * 0.09)
                    .padding(.trailing)
                    .foregroundColor(Color(ColorHelper.customRed.rawValue))
                }

                .buttonStyle(AddMovieStyle())
                .frame(width: UIScreen.main.bounds.width * 0.7)

    }
        
}

struct AddMovieButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            AddMovieButton()
        }
    }
}
