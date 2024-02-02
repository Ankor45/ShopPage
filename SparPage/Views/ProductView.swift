//
//  ProductView.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 31.01.2024.
//

import SwiftUI

struct ProductView: View {
    let productData: ProductData
    
    var body: some View {
        VStack {
            NavigationBar()
            ScrollView(showsIndicators: false) {
                VStack {
                    ProductImageView(
                        image: productData.productImage
                    )
                    FeedBackView()
                    ProductNameView(
                        productName: productData.name
                    )
                    CountryLabelView(
                        countryFlag: productData.countryFlag,
                        manufacturePlace: productData.manufacturePlace
                    )
                    DescriptionView(
                        description: productData.description
                    )
                    CharacteristicsView(
                        characteristic: productData.characteristics
                    )
                    ReviewView(
                        userReview: productData.userReview
                    )
                    Spacer()
                }
                .padding(.top)
            }
            AddToCartView(
                saleCoefficient: productData.saleCoefficient,
                unitPrice: productData.price
            )
        }
    }
}

#Preview {
    ProductView(
        productData: ProductData(
            characteristics: ProductCharacteristic(),
            userReview: UserReview()
        )
    )
}
