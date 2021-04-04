//
//  CategoryScreen.swift
//  Bakeryshop
//
//  Created by Vikram on 28/03/2021.
//

import SwiftUI

struct CategoryScreen: View {
    var topBar: some View {
        HStack {
            Text("Categories")
                .font(.title3)
                .fontWeight(.heavy)
            Spacer()
            
            CartButton()
        }
    }
    
    var sectionTitle: some View {
        Text("Cakes Menu")
            .font(.title2)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top)
    }
    
    var body: some View {
        VStack(spacing: 24) {
            topBar
            
            SearchTextField()
                .padding(.top)
            
            CategoryList()
            
            sectionTitle
            
            CategoryItemList()
            
            Spacer()
        }
        .padding()
    }
}

struct CategoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        CategoryScreen()
    }
}
