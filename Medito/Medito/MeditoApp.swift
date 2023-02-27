//
//  MeditoApp.swift
//  Medito
//
//  Created by NomoteteS on 27.02.2023.
//

import SwiftUI

@main
struct MeditoApp: App {
    @StateObject var audioManager = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
