//
//  AudioManager.swift
//  Medito
//
//  Created by NomoteteS on 27.02.2023.
//

import Foundation
import AVKit

final class AudioManager: ObservableObject {
    var player: AVAudioPlayer?

    func startPlayer(track: String, isPrview: Bool = false) {
        guard let url = Bundle.main.url(forResource: track, withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url)
            
            if isPrview {
                player?.prepareToPlay()
            } else {
                player?.play()
            }
            
            
        } catch {
            print(error.localizedDescription)
        }
    }
}
