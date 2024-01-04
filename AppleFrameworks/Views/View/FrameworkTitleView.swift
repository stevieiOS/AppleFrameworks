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
        
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(framework.name)
                .font(.headline)
                .fontWeight(.semibold)
                .fontDesign(.monospaced)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: Framework.MockData.sampleFramework)
}
