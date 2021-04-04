//
//  PrimaryButton.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct PrimaryButton: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Add to cart")
                .font(.body)
                .fontWeight(.heavy)
                .foregroundColor(.primaryColor)
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                .overlay(
                    Capsule()
                        .stroke(Color.primaryColor, lineWidth: 1)
                )
        })
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton()
    }
}
