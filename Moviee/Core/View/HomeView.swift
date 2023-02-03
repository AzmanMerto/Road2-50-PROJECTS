//
//  HomeView.swift
//  Moviee
//
//  Created by NomoteteS on 29.01.2023.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    
    @FetchRequest(entity: Moviee.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Moviee.movieName, ascending: true)]) var moviee : FetchedResults<Moviee>
//    @FetchRequest(sortDescriptors: [SortDescriptor(\.movieName)]) var moviee: FetchedResults<Moviee>
    
    @EnvironmentObject var appRouter: MovieeRouter
    
    var body: some View {
        ZStack {
            ViewsBackground()
            VStack {
                
                List {
                    ForEach(moviee) { movie in
                        let convertedImage = movie.movieImage?.toImage()
                        ResultFilmsRectengle(uIImage: convertedImage!, title: movie.movieName!, price: movie.moviePrice! )
                    }
                }
                .frame(height: UIScreen.main.bounds.height * 0.7)
                
                Button {
                    appRouter.state = .addMovie
                } label: {
                    Text("Go to Add Movie View")
                }.buttonStyle(.borderedProminent)
            }
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
