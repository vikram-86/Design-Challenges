//
//  PrimaryCTAButton.swift
//  A1
//
//  Created by Vikram on 05/04/2021.
//

import SwiftUI

struct PrimaryCTAButton: View {
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Spacer()
                Text("activate")
                    .textCase(.uppercase)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .modifier(ShadowWithBlurModifier())
        })
    }
}

struct PrimaryCTAButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryCTAButton()
    }
}
