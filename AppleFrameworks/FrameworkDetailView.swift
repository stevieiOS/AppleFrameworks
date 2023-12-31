//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Stevie on 12/30/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                })
            }
            .padding()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .fontDesign(.monospaced)
                .padding()
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                AFButton(title: "Learn More")
            })
        }
    }
}


#Preview {
    FrameworkDetailView(framework: Framework.MockData.sampleFramework)
}
