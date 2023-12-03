//
//  ContentView.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            CardView(honeymoon: honeymoonData[2])
            //Add padding to the card view later
                .padding()
            
            Spacer()
            
            FooterView()
        }
       
    }
}

#Preview {
    ContentView()
}
