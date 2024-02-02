//
//  ProductImageView.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 31.01.2024.
//

import SwiftUI

struct ProductImageView: View {
    let image: String
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                Image(image)
                    .resizable()
                    .scaledToFit()
                SaleCartLabel()
                    .padding(.leading, 20)
                    .padding(.top, 10)
            }
        }
    }
}

struct SaleCartLabel: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6)
            
                .fill(.green)
            Text("Цена по карте")
                .foregroundColor(.white)
                .padding(.horizontal, 5)
        }
        .frame(width: 130, height: 35)
    }
}

#Preview {
    ProductImageView(image: "TeaImage")
}


