//
//  CustomCard.swift
//  spaceXApp
//
//  Created by Nino Kurshavishvili on 11.04.25.
//

import SwiftUI

struct CustomCard: View {
    var body: some View {
        ZStack {
            CardWithBottomRightCutout()
                .fill(Color.white)
                .shadow(radius: 5)

            HStack {
                Image(systemName: "rocket")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
                VStack(alignment: .leading) {
                    Text("Rocket Name")
                        .font(.headline)
                    Text("Short description...")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding()
        }
        .frame(height: 200)
        .padding(.horizontal)
    }
}
