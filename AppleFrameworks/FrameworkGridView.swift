//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Stevie on 12/29/23.
//

import SwiftUI


struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
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
