//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Stevie on 12/30/23.
//

import SwiftUI
import UIKit

struct FrameworkDetailView: View {
    var framework: Framework

    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false

    var body: some View {
        VStack {
           XDismissButton(isShowingDetailView: $isShowingDetailView)
            .padding()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .fontDesign(.monospaced)
                .padding()

            Spacer()

            Button(action: { isShowingSafariView = true
                   },
                   label: {
                       AFButton(title: "Learn More")
                   })

                   .sheet(isPresented: $isShowingSafariView, content: {
                       SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
                   })
        }
    }
}

#Preview {
    FrameworkDetailView(framework: Framework.MockData.sampleFramework, isShowingDetailView: .constant(true))
}
