//
//  MainTabView.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 24.04.25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0

    var body: some View {
        ZStack {
            Group {
                switch selectedTab {
                case 0:
                    RocketListView()
                case 1:
                    Text("Other Page")
                default:
                    EmptyView()
                }
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    
                    HStack(spacing: 50) {
                        Button(action: {
                            selectedTab = 0
                        }) {
                            Image(systemName: "moonphase.new.moon")
                                .foregroundColor(selectedTab == 0 ? .white : .gray)
                        }

                        Button(action: {
                            selectedTab = 1
                        }) {
                            Image(systemName: "moonphase.waxing.crescent")
                                .foregroundColor(selectedTab == 1 ? .white : .gray)
                        }
                    }
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .padding(.horizontal, 60)
//                    .padding(.bottom)
                    
                    Spacer()
                }
            }
        }
    }
}


