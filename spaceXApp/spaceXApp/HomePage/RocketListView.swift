//
//  RocketListView.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 13.04.25.
//


import SwiftUI

struct RocketListView: View {
    @StateObject private var viewModel = RocketViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    if viewModel.isLoading {
                        ProgressView("Loading Rockets...")
                    } else if let error = viewModel.errorMessage {
                        Text("Error: \(error)")
                            .foregroundColor(.red)
                    } else {
                        ForEach(viewModel.rockets, id: \.id) { rocket in
                            CustomCard(rocket: rocket)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("SpaceX Rockets")
        }
        .task {
            await viewModel.loadRockets()
        }
    }
}
