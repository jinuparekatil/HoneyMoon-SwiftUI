//
//  FooterView.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            Button(action: {
                print("success")
            }, label: {
                Text("Book the destination".uppercased())
                    .font(.system(.subheadline,design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .tint(.pink)
                    .background(
                    Capsule()
                        .stroke(.pink,lineWidth: 2)
                    )
            })
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42,weight: .light))
        }
        .padding()
    }
}

#Preview(traits : .fixedLayout(width: 375, height: 80)) {
    FooterView()
}
