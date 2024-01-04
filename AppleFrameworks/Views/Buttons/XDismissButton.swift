//
//  XDismissBody.swift
//  AppleFrameworks
//
//  Created by Stevie on 1/3/24.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            Spacer()
            Button { isShowingDetailView = false } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
