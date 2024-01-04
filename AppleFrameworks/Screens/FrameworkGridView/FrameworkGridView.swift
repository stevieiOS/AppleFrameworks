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
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(Framework.MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                        }
                    }
                }
            }
            
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? Framework.MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}



#Preview {
    FrameworkGridView()
}


