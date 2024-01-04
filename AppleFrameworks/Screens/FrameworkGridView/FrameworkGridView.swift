//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Stevie on 12/29/23.
//

import SwiftUI


struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(Framework.MockData.frameworks) { framework in
                    NavigationLink(destination: {
                        FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)
                    }) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
        .accentColor(.button)
    }
}



#Preview {
    FrameworkGridView()
}


