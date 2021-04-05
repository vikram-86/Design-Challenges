//
//  CircularProgress.swift
//  A1
//
//  Created by Vikram on 04/04/2021.
//

import SwiftUI

struct CircularProgress: View {
    var startColor: Color
    var endColor: Color
    var progress: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: progress)
                // Any better way to do this gradient?
                .stroke(AngularGradient(gradient: Gradient(colors: [startColor,
                                                                    startColor,
                                                                    endColor,
                                                                    endColor,
                                                                    endColor,
                                                                    startColor]),
                                        center: .center,
                                        angle: .degrees(0)),
                        style: StrokeStyle(lineWidth: 12,
                                           lineCap: .round)
                )
                .rotationEffect(.degrees(270))
                .modifier(ShadowWithBlurModifier())
                .padding()
        }
    }
}

struct CircularProgress_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircularProgress(startColor: .gradientRed, endColor: .gradientOrange, progress: 0.7)
        }
        .previewLayout(.sizeThatFits)
    }
}
