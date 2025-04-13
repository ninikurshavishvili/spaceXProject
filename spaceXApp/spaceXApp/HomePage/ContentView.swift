//
//  ContentView.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 11.04.25.
//

import SwiftUI

struct ContentView: View {
    let rocket: Rocket

    var body: some View {
        VStack(spacing: 20) {
            Text("Hi")
                .font(.title)
                .padding(.top)

            Text("something text here")
                .font(.headline)

            CustomCard(rocket: rocket)
        }
    }
}

//#Preview {
//    CustomCard(rocket: rocket)
//}

