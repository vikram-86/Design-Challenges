//
//  TabbarButton.swift
//  Bakeryshop
//
//  Created by Vikram on 28/03/2021.
//

import SwiftUI

struct TabbarButton: View {
    var image: String
    var isActive: Bool
    var action: ButtonAction
    
    var body: some View {
        Button(action: action, label: {
            VStack {
                Image(systemName: image)
                    .font(.title)
                
                if isActive {
                    Circle()
                        .frame(width: 8, height: 8)
                }
            }
        })
    }
}

struct TabbarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabbarButton(image: "house", isActive: false) {
            
        }
    }
}
