//
//  CategoryList.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

enum Category: CaseIterable{
    case cakes
    case western
    case local
    case drinks
    case dessert
    case snack
    
    var text: String {
        switch self {
        case .cakes: return "Cakes"
        case .western: return "Western"
        case .local: return "Local"
        case .drinks: return "Drinks"
        case .dessert: return "Dessert"
        case .snack: return "Snacks"
        }
    }
    
    var image: Image {
        switch self {
        case .cakes: return Image("cake")
        case .western: return Image("pizza")
        case .local: return Image("local")
        case .drinks: return Image("drinks")
        case .dessert: return Image("dessert")
        case .snack: return Image("snack")
        }
    }
}

struct CategoryList: View {
    private var categories = Category.allCases
    @State private var selectedCategory = Category.cakes
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(categories, id: \.self) { category in
                    CategoryButton(category: category, isSelected: category == selectedCategory) {
                        selectedCategory = category
                    }
                }
            }
        }
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}
