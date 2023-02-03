//
//  DataController.swift
//  Moviee
//
//  Created by NomoteteS on 31.01.2023.
//

import Foundation
import CoreData
import UIKit

class DataController: ObservableObject {
    static let shared = DataController()
    // Responsible for preparing a model
    let persistentContainer : NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "MovieeModel")
        persistentContainer.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved!")
        } catch {
            print("Not saved data")
        }
    }

    func addMovie(movieName: String, price: String, movieImage: String, context: NSManagedObjectContext) {
        let movie = Moviee(context: context)
        movie.moviePrice = price
        movie.movieName = movieName
        movie.movieImage = movieImage
        
        save(context: context)
    }

    func editMovie(movie: Moviee, movieName: String, price: String, movieImage: String, context: NSManagedObjectContext) {
        movie.moviePrice = price
        movie.movieName = movieName
        movie.movieImage = movieImage

        save(context: context)
    }
}

