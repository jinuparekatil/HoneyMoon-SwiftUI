//
//  HeaderView.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                
                print("information")
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .tint(.primary)
            Spacer()
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            Spacer()
            
            Button(action: {
                print("Guide")
                
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24,weight: .regular))
                
            })
            .tint(.primary)
        }
        .padding()
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 80)) {
    HeaderView()
}
