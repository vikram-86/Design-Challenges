//
//  LoginScreenProgressView.swift
//  A1
//
//  Created by Vikram on 05/04/2021.
//

import SwiftUI

struct LoginScreenProgressView: View {
    @State private var isAnimating = false
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Circle()
                    .fill(Color.primaryRed.opacity(0.03))
                    .modifier(ShadowWithBlurModifier(radius: 4))
                
                CircularProgress(startColor: .gradientOrange, endColor: .gradientRed, progress: 0.7)
                    .frame(width: proxy.size.width * 0.9)
                    .rotationEffect(.degrees(isAnimating ? 360 : 0))
                    .animation(Animation.linear.speed(0.05).repeatForever(autoreverses: false))
                
                CircularProgress(startColor: .gradientRed, endColor: .primaryRed, progress: 0.85)
                    .frame(width: proxy.size.width * 0.7)
                    .rotationEffect(.degrees(isAnimating ? 0 : 360))
                    .animation(Animation.linear.speed(0.03).repeatForever(autoreverses: false))
                
                Image(systemName: "faceid")
                    .font(.system(size: 100, weight: .thin, design: .rounded))
            }
        }
        .onAppear {
            isAnimating = true
        }
    }
}

struct LoginScreenProgressView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenProgressView()
            .previewLayout(.sizeThatFits)
    }
}
