//
//  PlayerView.swift
//  Medito
//
//  Created by NomoteteS on 27.02.2023.
//

import SwiftUI

struct PlayerView: View {
    var meditationVM: MeditationViewModel
    @State private var value : Double = 0.0
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            
            // MARK: Background Image
            
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            // MARK: Blur View
            
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.25)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                HStack {
                    // MARK: - Dismiss Button
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                
                // MARK: Title
                
                Text(meditationVM.meditation.title)
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
                
                HStack {
                    // MARK: Repeat Button
                    PlaybackControlButton(systemName: "repeat") {
                        
                    }
                    
                    Spacer()

                    // MARK: Backward Button
                    PlaybackControlButton(systemName: "gobackward.10") {
                        
                    }
                    
                    Spacer()
                    
                    // MARK: Play/Pause Button
                    PlaybackControlButton(systemName: "play.circle.fill",fontSize: 44) {
                        
                    }
                    
                    Spacer()
                    
                    // MARK: Forward Button
                    PlaybackControlButton(systemName: "goforward.10") {
                        
                    }
                    
                    Spacer()
                    
                    // MARK: Stop Button
                    PlaybackControlButton(systemName: "stop.fill") {
                        
                    }
                }
            }
            .padding(20)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data)
    static var previews: some View {
        PlayerView(meditationVM: meditationVM)
    }
}
