//
//  ProductNameView.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 01.02.2024.
//

import SwiftUI

struct ProductNameView: View {
    let productName: String
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(productName)
                    .font(.largeTitle)
                    .bold()
                    .lineLimit(3)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    ProductNameView(productName: "Добавка \"Липа\" к чаю 200 г")
}
