//
//  GuideComponent.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import SwiftUI

struct GuideComponent: View {
    // MARK: - Properties
    
    var title: String
    var subTitle : String
    var description: String
    var icon: String
    var body: some View {
        HStack(alignment: .center,spacing: 20){
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundStyle(.pink)
            
            VStack(alignment: .leading,spacing: 4){
                HStack{
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(subTitle.uppercased())
                        .font(.subheadline)
                        .fontWeight(.heavy)
                        .foregroundStyle(.pink)
                }
                Divider().padding(.bottom)
                
                Text(description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    GuideComponent(title: "Title", subTitle: "Swipe right", description: "This is a place holder text This is a place holder text This is a place holder text This is a place holder text", icon: "heart.circle")
}
