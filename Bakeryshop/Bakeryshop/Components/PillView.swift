//
//  PillView.swift
//  Bakeryshop
//
//  Created by Vikram on 26/03/2021.
//

import SwiftUI

struct PillView: View {
    var title: String
    var isActive: Bool
    var action: ButtonAction
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(isActive ? .white : .primary)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(isActive ? Color.primaryColor : Color.white)
                .clipShape(
                    Capsule()
                )
                .overlay(
                    Capsule()
                        .stroke(Color.primaryColor.opacity(0.4), lineWidth: isActive ? 0 : 1)
                )
                .fixedSize(horizontal: true, vertical: true)
        })
    }
}

struct PillView_Previews: PreviewProvider {
    static var previews: some View {
        PillView(title: "18 cm", isActive: true, action: {})
            .previewLayout(.sizeThatFits)
    }
}
