//
//  NavigationBar.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 31.01.2024.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Button(action: {}) {
                    Image(systemName: "arrow.backward")
                        .resizable()
                        .frame(width: 28, height: 20)
                        .foregroundColor(.green)
                }
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "doc.plaintext")
                        .resizable()
                        .frame(width: 20, height: 26)
                        .foregroundColor(.green)
                }
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 20, height: 26)
                        .foregroundColor(.green)
                }
                Button(action: {}) {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(.green)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    NavigationBar()
}
