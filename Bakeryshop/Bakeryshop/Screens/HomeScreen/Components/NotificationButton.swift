//
//  NotificationButton.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import SwiftUI

struct NotificationButton: View {
    var body: some View {
        Button(action: {}, label: {
            Image(systemName: "bell")
                .font(.body)
                .padding(.all, 8)
                .background(Color.primaryColor)
                .foregroundColor(.white)
                .cornerRadius(8)
        })
    }
}

struct NotificationButton_Previews: PreviewProvider {
    static var previews: some View {
        NotificationButton()
    }
}
