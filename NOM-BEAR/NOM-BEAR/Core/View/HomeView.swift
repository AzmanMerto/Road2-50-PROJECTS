//
//  HomeView.swift
//  NOM-BEAR
//
//  Created by NomoteteS on 24.01.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        MapViewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
