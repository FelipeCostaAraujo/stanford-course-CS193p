//
//  Array+Identifiable.swift
//  memorize
//
//  Created by Felipe Araujo on 19/09/20.
//  Copyright © 2020 Felipe Araujo. All rights reserved.
//

import Foundation

extension Array where Element:Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count{
            if self[index].id == matching.id {
                return index
            }
        }
        return nil // TODO: bogus
    }
}
