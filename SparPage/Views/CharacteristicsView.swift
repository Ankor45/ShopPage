//
//  CharacteristicsView.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 01.02.2024.
//

import SwiftUI

struct CharacteristicsView: View {
    let characteristic: ProductCharacteristic
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Характеристики")
                .font(.title3)
                .bold()
            DottedTextView(leftText: "Производство", rightText: characteristic.place)
            DottedTextView(leftText: "Энернетическая ценность, ккал/100 г", rightText: characteristic.energyValue)
            DottedTextView(leftText: "Жиры/100 г", rightText: characteristic.fats)
            DottedTextView(leftText: "Белки/100г", rightText: characteristic.proteins)
            DottedTextView(leftText: "Углеводы/100г", rightText: characteristic.carbohydrates)
            Text("Все характеристики")
                .foregroundColor(.green)
                .font(.title3)
                .bold()
        }
        .padding()
    }
}

struct DottedTextView: View {
    let leftText: String
    let rightText: String
    
    var body: some View {
        HStack(alignment: .top) {
            Text(leftText)
                .font(.system(size: 14))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            ZStack {
                GeometryReader { geometry in
                    let dotCount = Int(geometry.size.width / 4.4)
                    Text(String(repeating: ".", count: dotCount))
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal)
            VStack {
                Text(rightText)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.trailing)
                    .lineLimit(nil)
            }
        }
        .frame(maxHeight: 70)
        .padding(.top, 5)
    }
}

#Preview {
    CharacteristicsView(characteristic: ProductCharacteristic())
}
