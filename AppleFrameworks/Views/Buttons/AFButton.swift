//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Stevie on 12/30/23.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
    
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .fontDesign(.monospaced)
            .frame(width: 280, height: 50)
            .background(LinearGradient(gradient: Gradient(colors: [Color.button, Color.buttonTwo]), startPoint: .bottomLeading, endPoint: .topTrailing))
            .foregroundColor(.white)
            .cornerRadius(18)
            .shadow(color: .gray, radius: 4)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
