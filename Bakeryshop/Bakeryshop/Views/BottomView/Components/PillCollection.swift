//
//  PillCollection.swift
//  Bakeryshop
//
//  Created by Vikram on 26/03/2021.
//

import SwiftUI

struct PillCollection: View {
    var sizes = ["16 cm", "18 cm", "22 cm", "25 cm"]
    @State private var selectedSize = "16 cm"
    
    var body: some View {
        HStack {
            ForEach(sizes.indices) { index in
                PillView(title: sizes[index],
                         isActive: selectedSize.elementsEqual(sizes[index]),
                         action: { selectedSize = sizes[index] })
                if index != sizes.count - 1 {
                    Spacer()
                }
            }
        }
    }
}

struct PillCollection_Previews: PreviewProvider {
    static var previews: some View {
        PillCollection()
    }
}
