//
//  SearchTextField.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct SearchTextField: View {
    @State private var searchText = ""
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
            })
            
            TextField("Search here", text: $searchText)
            
            Button(action: {}, label: {
                Image(systemName: "slider.horizontal.3")
            })
        }
        .font(Font.system(size: 20).weight(.bold))
        .foregroundColor(.primaryColor)
        .padding()
        .background(Color(#colorLiteral(red: 0.952861011, green: 0.9529945254, blue: 0.9528190494, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}

struct SearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextField()
    }
}
