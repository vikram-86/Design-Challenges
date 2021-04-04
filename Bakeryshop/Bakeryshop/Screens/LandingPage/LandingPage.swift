//
//  LandingPage.swift
//  Bakeryshop
//
//  Created by Vikram on 28/03/2021.
//

import SwiftUI

struct LandingPage: View {
    @State private var selectedIndex = 0
    @State private var shouldHideBar = false
    
    var body: some View {
        ZStack {
            switch selectedIndex {
            case 0:
                HomeScreen(hideBar: $shouldHideBar)
                    .transition(AnyTransition.opacity.combined(with: .slide))
            case 2:
                CategoryScreen()
                    .transition(AnyTransition.opacity.combined(with: .slide))
                
            default:
                Text("Under Construction")
                    .transition(AnyTransition.opacity.combined(with: .slide))
            }
            
            VStack {
                Spacer()
                Tabbar(selectedIndex: $selectedIndex)
                    .offset(y: shouldHideBar ? 100 : 0)
                    .animation(.spring())
                   
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
