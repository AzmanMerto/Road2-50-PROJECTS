//
//  NOM_BEARApp.swift
//  NOM-BEAR
//
//  Created by NomoteteS on 24.01.2023.
//

import SwiftUI

@main
struct NOM_BEARApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
