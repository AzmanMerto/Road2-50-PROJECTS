//
//  PlayerView.swift
//  Medito
//
//  Created by NomoteteS on 27.02.2023.
//

import SwiftUI

struct PlayerView: View {
    
    @State private var value : Double = 0.0
    
    var body: some View {
        ZStack {
            Image("testPhoto")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                HStack {
                    // MARK: - Dismiss Button
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                
                // MARK: Title
                
                Text("1 Minute Relax")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                
                VStack(spacing: 5) {
                    Slider(value: $value, in: 0...60)
                    
                    //MARK: - Playback Time
                    HStack{
                        Text("0:00")
                        
                        Spacer()
                        
                        Text("1:00")
                    }
                    .font(.caption)
                    .foregroundColor(.white)
                }
                .tint(.purple)
            }
            .padding(20)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
