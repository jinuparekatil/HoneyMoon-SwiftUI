//
//  GuideView.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import SwiftUI

struct GuideView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center , spacing: 20) {
                HeaderComponent()
                Spacer(minLength: 10)
                Text("Get Started!")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                    
                Text("Discover and pick your favorite destination for your romantic honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                VStack(alignment: .leading, spacing: 25){
                    GuideComponent(title: "Like", subTitle: "Swipe right", description: "Do you like this destinantion? Touuch the screen and swipe right. It will be saved to favorites.", icon: "heart.circle")
                    
                    GuideComponent(title: "Dismiss", subTitle: "Swipe Left", description: "Would you rather skip this place? Touch the screen and swipe left. You will no longer see it ", icon: "xmark.circle")
                    
                    GuideComponent(title: "Book", subTitle: "Tap the button", description: "Our selection of honeymoon resorts is perfect setting for you to embark your new life together.", icon: "checkmark.square")
                }
                Spacer(minLength: 10)
                Button(action: {
                    //ACTION
                    dismiss()
                }, label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                        
                    
                })
            }
            .frame(minWidth: 0,maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal , 25)
        }
    }
}

#Preview {
    GuideView()
}
