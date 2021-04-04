//
//  CategoryItem.swift
//  Bakeryshop
//
//  Created by Vikram on 28/03/2021.
//

import SwiftUI

struct CategoryItem: View {
    var item: CategoryItemDatasource
    
    var body: some View {
        ZStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 175, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
            
            Color.black
                .opacity(0.3)
            
            Text(item.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .multilineTextAlignment(.center)
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(item: CategoryItemDatasource.placeholders[0])
    }
}
