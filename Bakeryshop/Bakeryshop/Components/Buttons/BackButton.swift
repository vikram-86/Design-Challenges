//
//  BackButton.swift
//  Bakeryshop
//
//  Created by Vikram on 26/03/2021.
//

import SwiftUI

typealias ButtonAction = (() -> ())
struct BackButton: View {
    var action: ButtonAction
    
    var body: some View {
        Button(action: action, label: {
            Image(systemName: "chevron.left")
                .font(.system(size: 14, weight: .medium))
                .frame(width: 32, height: 32)
                .background(Color.primaryColor)
                .foregroundColor(.white)
                .clipShape(
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                )
        })
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton(action: {})
            .previewLayout(.sizeThatFits)
    }
}
