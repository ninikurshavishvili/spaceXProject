//
//  RocketPage.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 24.04.25.
//

import SwiftUI

struct HomePage: View {
    
    
    var body: some View {
        TabView {
            Tab("Rockets", systemImage: "moonphase.new.moon") {
                    RocketListView()
                }
            Tab("Rockets", systemImage: "moonphase.waxing.crescent") {
                    RocketListView()
                }
        }
    }
    
}
