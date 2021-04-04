//
//  HomeScreen.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct HomeScreen: View {
    private let gridItems: [GridItem] = Array(repeating: .init(.flexible(), spacing: 16), count: 2)
    private let products = placeHolders
    
    @State private var selectedProduct: Product? = nil
    @Binding var hideBar: Bool
    
    var body: some View {
        ZStack {
            VStack(spacing: 32){
                TopBar()
                
                Text("What would you like to eat?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .frame(maxWidth: 250)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 32) {
                        SearchTextField()
                        CategoryList()
                        
                        Text("Over Popular Items")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        LazyVGrid(columns: gridItems, spacing: 40) {
                            ForEach(products) { product  in
                                ProductCell(product: product)
                                    .onTapGesture {
                                        selectedProduct = product
                                        hideBar = true
                                    }
                            }
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
            
            if let product = selectedProduct {
                DetailScreen(product: product) {
                    selectedProduct = nil
                    hideBar = false
                }
                .animation(.spring())
                .transition(.move(edge: .bottom))
                .edgesIgnoringSafeArea(.all)
                .zIndex(10)
                
            }
        }
        .animation(.linear)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(hideBar: .constant(false))
        
    }
}
