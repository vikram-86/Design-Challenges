//
//  Tabbar.swift
//  Bakeryshop
//
//  Created by Vikram on 28/03/2021.
//

import SwiftUI

struct Tabbar: View {
    @Binding var selectedIndex: Int
    
    var buttonImages: [String] = [
        "house",
        "heart",
        "square.grid.2x2",
        "person"
    ]
    
    var body: some View {
        HStack {
            Spacer()
            ForEach(buttonImages.indices, id: \.self) { index in
                TabbarButton(image: buttonImages[index],
                             isActive: index == selectedIndex) {
                    withAnimation {
                        selectedIndex = index
                    }
                }
                
                Spacer()
            }
        }
        .frame(height: 80)
        .foregroundColor(.white)
        .background(Color.primaryColor)
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar(selectedIndex: .constant(0))
    }
}
