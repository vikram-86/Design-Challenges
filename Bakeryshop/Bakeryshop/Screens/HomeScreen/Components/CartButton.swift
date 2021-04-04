//
//  CartButton.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct CartButton: View {
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Image(systemName: "cart.fill")
                    .font(.body)
                
                Text("3")
                    .font(.body)
                    .fontWeight(.semibold)
            }
            .padding(.all, 8)
            .foregroundColor(.white)
            .background(Color.primaryColor)
            .cornerRadius(8)
        })
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton()
    }
}
