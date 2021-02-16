//
//  OptionalImage.swift
//  EmojiArt
//
//  Created by Felipe Araujo on 16/02/21.
//

import SwiftUI

struct OptionalImage: View {
    var uiImage: UIImage?
    
    var body: some View{
        Group{
            if uiImage != nil {
                Image(uiImage: uiImage!)
            }
        }
    }
    
}
