//
//  CategoryButton.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct CategoryButton: View {
    var category: Category
    var isSelected: Bool
    var action: ButtonAction
    var body: some View {
        Button(action: action, label: {
            VStack {
                category.image
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 44, height: 44)
                    .foregroundColor(isSelected ? Color.white : Color(#colorLiteral(red: 0.4940738678, green: 0.4941465855, blue: 0.4940509796, alpha: 1)))
                    .padding(.all, 8)
                    .background(isSelected ? Color.primaryColor : Color(#colorLiteral(red: 0.952861011, green: 0.9529945254, blue: 0.9528190494, alpha: 1)))
                    .cornerRadius(8)
                
                Text(category.text)
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            
        })
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(category: .cakes, isSelected: true, action: {})
    }
}
