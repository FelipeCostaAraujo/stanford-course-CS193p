//
//  Arrat+Only.swift
//  memorize
//
//  Created by Felipe Araujo on 19/09/20.
//  Copyright © 2020 Felipe Araujo. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
