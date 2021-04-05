//
//  ShadowWithBlurModifier.swift
//  A1
//
//  Created by Vikram on 05/04/2021.
//

import SwiftUI

struct ShadowWithBlurModifier: ViewModifier {
    var radius: CGFloat = 10
    
    func body(content: Content) -> some View {
        ZStack {
            content
                .blur(radius: 10)
                .opacity(0.5)
            content
        }
    }
}
