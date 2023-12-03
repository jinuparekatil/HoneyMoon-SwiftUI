//
//  FooterView.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import SwiftUI

struct FooterView: View {
    
    // MARK: - PROPERTIES
    @Binding var showBookingAlert: Bool
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            Button(action: {
                
                self.showBookingAlert.toggle()
//                print("success")
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

struct FooterView_Previews: PreviewProvider {
    @State  static var showAlert: Bool = false
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
