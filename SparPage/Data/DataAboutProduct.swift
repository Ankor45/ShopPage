//
//  DataAboutProduct.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 02.02.2024.
//

import Foundation

struct ProductData {
    let name = "Добавка \"Липа\" к чаю 200 г"
    let productImage = "TeaImage"
    let countryFlag = "SpainFlag"
    let manufacturePlace = "Испания, Риоха"
    let description = "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов."
    let price = 199.9
    let saleCoefficient = 0.2998
    let characteristics: ProductCharacteristic
    let userReview: UserReview
}

struct ProductCharacteristic {
    let place = "Россия, Краснодарский край"
    let energyValue = "25 ккал, 105 кДж"
    let fats = "0,1 г"
    let proteins = "1,3 г"
    let carbohydrates = "3,3 г"
}
  
struct UserReview {
    let reviewerName = "Александр В."
    let date = "7 мая 2021"
    let starsRating = 4
    let reviewText = "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"
}

extension ProductData {
    static func getProductData() -> ProductData {
        return ProductData(characteristics: ProductCharacteristic(), userReview: UserReview())
    }
}
