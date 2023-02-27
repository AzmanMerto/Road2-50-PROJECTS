//
//  MeditationView.swift
//  Medito
//
//  Created by NomoteteS on 27.02.2023.
//

import SwiftUI

struct MeditationView: View {
    
    @State private var showPlayer = false
    
    var body: some View {
        VStack(spacing: 0) {
            Image("testPhoto")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height * 2 / 3)
            
            // MARK: Meditation Details
            ZStack {
                Color(red: 24/255, green: 23/255, blue: 22/255)
                
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Music")
                        
                        Text("0s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    Text("1 Minute Relaxing Meditation")
                        .font(.title)
                    
                    Button {
                        showPlayer = true
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical,10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20 )
                    }

                    
                    Text("Clear your mind and slumber into nothingness. Allocate only a few moments for a quick breathe")
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView()
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
