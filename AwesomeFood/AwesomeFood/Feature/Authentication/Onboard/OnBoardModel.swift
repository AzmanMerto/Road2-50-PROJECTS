//
//  OnboardModel.swift
//  AwesomeFood
//
//  Created by NomoteteS on 27.12.2022.
//

import Foundation

struct OnBoardModel: Identifiable {
    var id: UUID = UUID()
    
    let imageName: String
    let description: String
    
    static let items: [OnBoardModel] = [
        OnBoardModel(imageName: "img_hand_pick", description: ""),
        OnBoardModel(imageName: "img_shop", description: "Shop global. Mind-blownly affordable."),
        OnBoardModel(imageName: "img_deliver", description: "Deliver on the promise of time.")
        
        ]

}
