//
//  LoginScreen.swift
//  A1
//
//  Created by Vikram on 04/04/2021.
//

import SwiftUI

struct LoginScreen: View {
    var skipButton: some View {
        Button(action: {}, label: {
            Text("skip")
                .font(.caption)
                .fontWeight(.semibold)
                .textCase(.uppercase)
        })
    }
    var body: some View {
        VStack {
            LoginScreenProgressView()
                .frame(width: 320, height: 320)
                .padding()
                .padding(.vertical, 32)
            
            Text("Use face ID to authorize")
                .font(.title)
                .fontWeight(.medium)
            
            Text("Activate face id so you don't need to confirm your PIN every time")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .padding(.top)
            
            PrimaryCTAButton()
                .padding(.horizontal, 64)
                .padding(.top, 64)
            
            skipButton
                .padding(.top, 24)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
