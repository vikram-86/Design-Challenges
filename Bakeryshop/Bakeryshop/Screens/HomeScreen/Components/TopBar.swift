//
//  TopBar.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack(spacing: 16) {
            MenuButton()
            
            Spacer()
            
            NotificationButton()
            
            CartButton()
        }
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
