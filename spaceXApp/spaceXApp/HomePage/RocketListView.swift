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
            ZStack {
                Color.black
                    .ignoresSafeArea()

                ScrollView {
                    
                    VStack(spacing: 20) {
                        if viewModel.isLoading {
                            ProgressView("Loading Rockets...")
                                .foregroundColor(.white)
                        } else if let error = viewModel.errorMessage {
                            Text("Error: \(error)")
                                .foregroundColor(.red)
                        } else {
                            HStack {
                                Text("Hi, NINI")
                                    .font(.subheadline)
                                    .foregroundStyle(.white)
                                    .padding()
                                Spacer()
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                            ForEach(viewModel.rockets, id: \.id) { rocket in
                                CustomCard(rocket: rocket)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("SpaceX Rockets")
            .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(.black)
        }
        .task {
            await viewModel.loadRockets()
        }
    }
}
