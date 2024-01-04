//
//  SafariView.swift
//  AppleFrameworks
//
//  Created by Stevie on 1/3/24.
//

import Foundation
import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
}
