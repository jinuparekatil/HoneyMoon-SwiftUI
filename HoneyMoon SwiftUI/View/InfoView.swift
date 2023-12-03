//
//  InfoView.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import SwiftUI

struct InfoView: View {
    // MARK: -  PROPERTIES
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center,spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                AppInfoView()
                Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                CreditsView()
                Spacer(minLength: 10)
                
                Button(action: {
//                    print("Button was tapped")
                    self.dismiss()
                }, label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                })
                
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity)
            .padding(.top,15)
            .padding(.bottom,25)
            .padding(.horizontal,25)
        }
    }
}


#Preview {
    InfoView()
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            RowAppInfoView(itemOne: "Application", itemTwo: "Honeymoon")
            RowAppInfoView(itemOne: "Compatibility", itemTwo: "iPhone,iPad")
            RowAppInfoView(itemOne: "Developer", itemTwo: "Jinu Joy")
            RowAppInfoView(itemOne: "Designer", itemTwo: "Jinu Joy")
            RowAppInfoView(itemOne: "Website", itemTwo: "github.com/jinuparekatil")
            RowAppInfoView(itemOne: "Version", itemTwo: "1.0.0")




        }
    }
}

struct RowAppInfoView: View {
    // MARK: - PROPERTIES
    
    var itemOne: String
    var itemTwo: String
    var body: some View {
        VStack {
            HStack{
                Text(itemOne).foregroundStyle(.gray)
                Spacer()
                Text(itemTwo)
            }
            Divider()
        }
    }
}

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            HStack{
                Text("Photos").foregroundStyle(.gray)
                Spacer()
                Text("Unsplash")
                
            }
            Divider()
            Text("Photographers").foregroundStyle(.gray)
            Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
                .multilineTextAlignment(.leading)
                .font(.footnote)
        }
    }
}
