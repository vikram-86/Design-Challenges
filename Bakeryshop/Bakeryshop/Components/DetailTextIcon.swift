//
//  DetailTextIcon.swift
//  Bakeryshop
//
//  Created by Vikram on 26/03/2021.
//

import SwiftUI
enum Icons {
    case star
    case calorie
    case time
        
    var name: String {
        switch self {
        case .star:
            return "star.fill"
        case .calorie:
            return "flame"
        case .time:
            return "alarm"
        }
    }
    
    var color: Color {
        switch self {
        case .star:
            return .yellow
        case .calorie:
            return Color(#colorLiteral(red: 1, green: 0.6169230342, blue: 0.1655265093, alpha: 1))
            
        case .time:
            return Color(#colorLiteral(red: 0.7824626565, green: 0.2843729854, blue: 0.28379336, alpha: 1))
        }
    }
}

struct DetailTextIcon: View {
    var icon: Icons
    var text: String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: icon.name)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .foregroundColor(icon.color)
            
            Text(text)
                .font(.caption)
                .fontWeight(.medium)
        }
    }
}

struct DetailTextIcon_Previews: PreviewProvider {
    static var previews: some View {
        DetailTextIcon(icon: .calorie, text: "180 Calories")
            .previewLayout(.sizeThatFits)
    }
}
