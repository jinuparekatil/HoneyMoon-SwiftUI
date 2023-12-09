//
//  Cardtransition.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import SwiftUI

extension AnyTransition{
    
    static var trailingBottom: AnyTransition{
        AnyTransition.asymmetric(insertion: .identity, removal: AnyTransition.move(edge: .trailing).combined(with: AnyTransition.move(edge: .bottom)))
    }
    static var leadingBottom: AnyTransition{
        AnyTransition.asymmetric(insertion: .identity, removal: AnyTransition.move(edge: .leading).combined(with: AnyTransition.move(edge: .bottom)))
    }
}
