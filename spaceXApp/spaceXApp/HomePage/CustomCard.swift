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
                .frame(height: 220)
                .shadow(radius: 4)

            VStack(alignment: .leading, spacing: 8) {
                Text(rocket.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text(rocket.country)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
                    .lineLimit(3)

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
        }
        .padding(.horizontal)
    }
}
