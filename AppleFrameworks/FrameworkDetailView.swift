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
            HStack {
                Spacer()
                Button { isShowingDetailView = false } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .fontDesign(.monospaced)
                .padding()

            Spacer()

            Button(action: { isShowingSafariView = true }, label: {
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
