//
//  CustomCard.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 11.04.25.
//

import SwiftUI

struct CustomCard: View {
    let rocket: Rocket
    var body: some View {
        ZStack(alignment: .topLeading) {
            CardWithBottomRightCutout()
                .fill(Color.gray.opacity(0.2))
                .overlay(
                    CardWithBottomRightCutout()
                        .stroke(Color.white, lineWidth: 1)
                )
            
                .frame(height: 220)
                .shadow(radius: 4)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(rocket.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                HStack(spacing: 4) {
                    Image(systemName: "location.fill")
                        .foregroundColor(.white.opacity(0.8))
                    Text(rocket.country)
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.8))
                        .lineLimit(3)
                }
                
            }
            .padding(.top, 30)
            .padding(.leading, 100)
            
            AsyncImage(url: URL(string: rocket.flickr_images.first ?? "")) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                } else {
                    Image(systemName: "arrow.trianglehead.clockwise")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .padding(10)
                }
            }
            .frame(width: 60, height: 60)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .offset(x: 20, y: 20)
            
            
            VStack {
                Spacer()
                HStack {
                    Button(action: {
                        print("Round button tapped!")
                    }) {
                        Image(systemName: "suit.heart.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                            .padding()
                            .background(
                                Circle()
                                    .fill(Color.gray.opacity(0.2))
                                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            )
                            .foregroundColor(.white)
                    }
                    .padding(.leading, 2)
                    .padding(.bottom, 15)
                    
                    Spacer()
                    
                    Button(action: {
                        print("Learn more tapped!")
                    }) {
                        Text("Learn more")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 140, height: 45)
                            .background(
                                RoundedRectangle(cornerRadius: 22)
                                    .fill(Color.gray.opacity(0.2))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 22)
                                            .stroke(Color.white, lineWidth: 1)
                                    )
                            )
                    }
                    .padding(.trailing, -5)
                    .padding(.bottom, -5)
                }
                .padding(.horizontal)
            }
        }
    }
}
