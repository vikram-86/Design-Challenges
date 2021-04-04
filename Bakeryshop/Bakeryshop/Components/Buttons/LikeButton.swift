//
//  LikeButton.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct LikeButton: View {
    @State private var isActive: Bool = false
    var body: some View {
        Button(action: { isActive.toggle() }, label: {
            Image(systemName: "heart")
                .font(.title3)
                .padding()
                .foregroundColor(isActive ? .white : .primaryColor)
                .background(isActive ? Color.primaryColor : Color.white)
                .frame(height: 44)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.primaryColor, lineWidth: isActive ? 0 : 1)
                )
        })
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton()
            .previewLayout(.sizeThatFits)
    }
}
