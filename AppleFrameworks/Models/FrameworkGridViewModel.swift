//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Stevie on 12/31/23.
//


import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
