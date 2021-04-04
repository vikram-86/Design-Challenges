//
//  BottomView.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct BottomView: View {
    var product: Product
    
    var details: some View {
        HStack {
            DetailTextIcon(icon: .star, text: product.rating)
            Spacer()
            DetailTextIcon(icon: .calorie, text: product.calories + " Calories")
            Spacer()
            DetailTextIcon(icon: .time, text: product.time)
        }
    }
    
    var detailSummaryTitle: some View {
        Text("Details")
            .font(.headline)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 24)
    }
    
    var detailSummary: some View {
        Text(product.description)
            .font(.caption)
            .fontWeight(.medium)
            .lineSpacing(4)
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 4)
    }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: -20)
            VStack {
                Stepper()
                    .offset(y: -24)
                
                BottomViewTitle(product: product)
                
                details
                detailSummaryTitle
                detailSummary

                    
                PillCollection()
                    .padding(.top)
                
                HStack {
                    LikeButton()
                    Spacer()
                    PrimaryButton()
                }
                .padding(.top, 24)
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
    }
}

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView(product: placeHolders[0])
    }
}
