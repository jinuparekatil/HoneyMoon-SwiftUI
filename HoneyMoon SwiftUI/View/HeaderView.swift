//
//  HeaderView.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import SwiftUI

struct HeaderView: View {
    // MARK: -  PROPERTIES
    
    @Binding var showGuideView: Bool
    
    @Binding var showInfoView: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                
//                print("information")
                self.showInfoView.toggle()
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .tint(.primary)
            .sheet(isPresented: $showInfoView){
                InfoView()
            }
            Spacer()
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            Spacer()
            
            Button(action: {
//                print("Guide")
                self.showGuideView.toggle()
                
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24,weight: .regular))
                
            })
            .tint(.primary)
            .sheet(isPresented: $showGuideView, content: {
                GuideView()
            })
            
        }
        .padding()
    }
}
struct HeaderView_Previews: PreviewProvider {
    @State  static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
