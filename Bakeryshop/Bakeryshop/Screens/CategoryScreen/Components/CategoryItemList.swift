//
//  CategoryItemList.swift
//  Bakeryshop
//
//  Created by Vikram on 28/03/2021.
//

import SwiftUI

struct CategoryItemDatasource: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    
    static var placeholders: [CategoryItemDatasource] = [
        .init(name: "Wedding Cake", imageName: "1"),
        .init(name: "Chocolate Cakes", imageName: "5"),
        .init(name: "Cupcakes", imageName: "4"),
        .init(name: "Random cakes", imageName: "7")
    ]
}



struct CategoryItemList: View {
    private var gridItems: [GridItem] = [
        .init(.flexible()),
        .init(.flexible())
    ]
    
    private var datasource = CategoryItemDatasource.placeholders
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: gridItems, content: {
                ForEach(datasource) { item in
                    CategoryItem(item: item)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                }
            })
        }
    }
}

struct CategoryItemList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemList()
    }
}
