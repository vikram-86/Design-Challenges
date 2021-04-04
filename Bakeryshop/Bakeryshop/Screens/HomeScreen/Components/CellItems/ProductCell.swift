//
//  ProductCell.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct ProductCell: View {
    var product: Product
    
    var body: some View {
        
        VStack(spacing: 8) {
            ZStack(alignment: .bottomTrailing) {
                Image(product.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 175, height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                
                HStack {
                    Image(systemName: "star.fill")
                        .font(.body)
                    
                    Text(product.rating)
                        .font(.body)
                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)
                .padding(.vertical, 8)
                .padding(.horizontal)
                .background(Color.primaryColor)
                .clipShape(Capsule())
                .padding()
            }
            
            Text(product.name)
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(product.category.text)
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(.secondary)
                .padding(.top, 4)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: placeHolders[0])
            .previewLayout(.sizeThatFits)
    }
}
