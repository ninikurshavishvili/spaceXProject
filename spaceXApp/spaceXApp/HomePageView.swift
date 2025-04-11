//
//  ContentView.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 10.04.25.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack {
            GroupBox {
                Text("Hi")
            }
            .frame(width: 250, height: 250)
        }
        .padding()
    }
}

#Preview {
    HomePageView()
}
