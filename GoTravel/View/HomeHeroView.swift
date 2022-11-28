//
//  HomeHeroView.swift
//  GoTravel
//
//  Created by ihsan.satriawan on 29/11/22.
//

import SwiftUI

struct HomeHeroView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 18){
            Text("Start your \nAdventure \nan Go \nTravel Now")
                .font(.system(size: 42, weight: .bold, design: .rounded))
                .multilineTextAlignment(.leading)

            Text("Discover local destinations beauty with Bluesky and travel with pride.")
                .font(.system(size: 18, weight: .regular, design: .rounded))
            
            Spacer()
        }
    }
}

// MARK: - PREVIEW
struct HomeHeroView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeroView()
    }
}
