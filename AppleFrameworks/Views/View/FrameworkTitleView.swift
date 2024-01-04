//
//  FrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by Stevie on 1/3/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .kerning(2.5)
                .fontDesign(.monospaced)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

#Preview {
    FrameworkTitleView(framework: Framework.MockData.sampleFramework)
}
