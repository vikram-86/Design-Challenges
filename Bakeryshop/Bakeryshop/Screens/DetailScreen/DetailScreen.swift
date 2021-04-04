//
//  DetailScreen.swift
//  Bakeryshop
//
//  Created by Vikram on 26/03/2021.
//

import SwiftUI

struct DetailScreen: View {
    var product: Product
    var action: ButtonAction
    
    var headerImage: some View {
        VStack {
            GeometryReader { gr in
                Image(product.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: gr.size.width, height: 450)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            Spacer()
        }
    }
    
    var backButton: some View {
        VStack() {
            HStack {
                BackButton(action: action)
                    .padding()
                    .padding(.top, 40)
                Spacer()
            }
            Spacer()
        }
    }
    
    var bottomView: some View {
        VStack {
            Spacer()
            BottomView(product: product)
        }
    }
    
    var body: some View {
        ZStack {
            headerImage
            backButton
            bottomView
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(product: placeHolders[1]) {}
    }
}
