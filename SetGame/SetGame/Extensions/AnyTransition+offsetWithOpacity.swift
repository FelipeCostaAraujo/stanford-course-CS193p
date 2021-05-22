//
//  AnyTransition+offsetWithOpacity.swift
//  SetGame
//
//  Created by Felipe Araujo on 21/05/21.
//

import SwiftUI

extension AnyTransition {
    static func offsetWithOpacity(width: CGFloat, height: CGFloat) -> AnyTransition {
        AnyTransition.offset(CGSize(width: width, height: height)).combined(with: .opacity)
    }
}
