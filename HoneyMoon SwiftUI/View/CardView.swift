//
//  CardView.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    
    let id = UUID()
    var honeymoon : Destination
    
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .scaledToFit()
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .overlay (
                VStack(alignment: .center, spacing: 12){
                    Text(honeymoon.place.uppercased())
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .shadow(radius: 1)
                        .padding(.horizontal,18)
                        .padding(.vertical,4)
                        .overlay(
                            Rectangle()
                                .fill(.white)
                                .frame(height: 1),
                            alignment: .bottom
                        
                        )
                    Text(honeymoon.country.uppercased())
                        .foregroundStyle(.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal,10)
                        .padding(.vertical,5)
                        .background(
                            Capsule().fill(.white)
                        )
                }
                .frame(minWidth: 280)
                .padding(.bottom,50),
            alignment: .bottom
                
                )
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 600)) {
    CardView(honeymoon: honeymoonData[1])
}
