//
//  MenuButton.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct MenuButton: View {
    var body: some View {
        Button(action: {}, label: {
            Image(systemName: "text.alignleft")
                .font(Font.title.weight(.bold))
                .foregroundColor(.primaryColor)
        })
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton()
    }
}
