//
//  Stepper.swift
//  Bakeryshop
//
//  Created by Vikram on 26/03/2021.
//

import SwiftUI

struct Stepper: View {
    @State private var count: Int = 0
    var body: some View {
        HStack {
            Button(action: {
                count = count > 0 ? count - 1 : 0
            }, label: {
                Text("-")
                    .bold()
                    .frame(width: 32, height: 32)
            })
            
            Text("\(count)")
                .font(.title)
                .bold()
            
            Button(action: {
                count += 1
            }, label: {
                Text("+")
                    .bold()
                    .frame(width: 32, height: 32)
            })
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 8)
        .background(Color.primaryColor)
        .foregroundColor(.white)
        .clipShape(Capsule())
    }
}

struct Stepper_Previews: PreviewProvider {
    static var previews: some View {
        Stepper()
            .previewLayout(.sizeThatFits)
    }
}
