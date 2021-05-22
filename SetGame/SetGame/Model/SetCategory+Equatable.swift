//
//  SetCategory+Equatable.swift
//  SetGame
//
//  Created by Felipe Araujo on 21/05/21.
//

import Foundation

protocol SetCategory: Equatable {
    associatedtype Content
}

extension SetCategory {
    static func isCorrectSet<Content: Equatable>(contentA: Content, contentB: Content, contentC: Content) -> Bool {
        
        // all the same or all different
        return (contentA == contentB && contentB == contentC) ||
               (contentA != contentB && contentB != contentC && contentC != contentA)
    }
}
