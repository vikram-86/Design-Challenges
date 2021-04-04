//
//  BottomViewTitle.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct BottomViewTitle: View {
    var product: Product
    
    var body: some View {
        HStack(spacing: 40) {
            Text(product.name)
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
            
            Spacer()
            
            HStack(alignment: .lastTextBaseline, spacing: 0){
                Text("$")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .bold()
                
                Text(product.price)
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
}

struct BottomViewTitle_Previews: PreviewProvider {
    static var previews: some View {
        BottomViewTitle(product: placeHolders[1])
    }
}
