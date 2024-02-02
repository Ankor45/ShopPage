//
//  AddToСartView.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 02.02.2024.
//

import SwiftUI

struct AddToCartView: View {
    @State private var unit = 0
    @State private var quantity = 0.0
    
    let saleCoefficient: Double
    let unitPrice: Double
    
    var body: some View {
        VStack {
            Picker("Unit", selection: $unit) {
                Text("Шт")
                    .tag(0)
                Text("Кг")
                    .tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            HStack {
                VStack(alignment: .leading) {
                    HStack(alignment: .center) {
                        Text("\(unit == 0 ? unitPrice * saleCoefficient : unitPrice * 5 * saleCoefficient, specifier: "%.1f")")
                            .font(.largeTitle)
                            .bold()
                        PriceLabel(value: $unit)
                    }
                    
                    Text("\(unit == 0 ? unitPrice : unitPrice * 5, specifier: "%.1f")")
                        .font(.caption)
                        .strikethrough()
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
                Spacer()
                
                AddProductButton(
                    unit: $unit,
                    quantity: $quantity,
                    coefficient: saleCoefficient,
                    price: unitPrice
                )
            }
        }
    }
}

struct AddProductButton: View {
    @Binding var unit: Int
    @Binding var quantity: Double
    
    let coefficient: Double
    let price: Double
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 170,height: 44)
                    .foregroundColor(.green)
                    .padding(.horizontal)
                if quantity == 0 {
                    Button {
                        quantity += 1
                    } label: {
                        Text("В корзину")
                            .foregroundColor(.white)
                            .bold()
                    }
                } else {
                    HStack(spacing: 5) {
                        Button {
                            if quantity > 0 {
                                quantity -= 1
                            }
                        } label: {
                            Image(systemName: "minus")
                                .foregroundColor(.white)
                        }
                        .frame(width: 50, height: 50)
                        ZStack {
                            VStack(spacing: 3) {
                                Text("\(lround(quantity)) \(unit == 0 ? "Шт" : "Кг")")
                                    .font(.system(size: 12, weight: .bold))
                                Text("\(calculatePrace(unit: unit, price: price, saleCoefficient: coefficient, count: quantity), specifier: "%.1f")₽")
                                    .font(.system(size: 11, weight: .medium))
                            }
                            .frame(width: 70, height: 40)
                        }
                        .foregroundColor(.white)
                        
                        Button {
                            quantity += 1
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                            
                        }
                        .frame(width: 50, height: 50)
                    }
                }
            }
        }
    }
    private func calculatePrace(unit: Int, price: Double, saleCoefficient: Double, count: Double) -> Double {
        let finalPrice = price * saleCoefficient * count
        return unit == 0 ? finalPrice : finalPrice * 5
    }
}

struct PriceLabel: View {
    @Binding var value: Int
    
    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                Text("₽")
                    .font(.system(size: 14))
                    .offset(y:-8)
                Image(systemName: "line.diagonal")
                    .offset(x: -10)
                Text(value == 0 ? "Шт" : "Кг" )
                    .font(.system(size: 9))
                    .bold()
                    .offset(x:-18, y: 6)
            }
        }
    }
}

#Preview {
    AddToCartView(
        saleCoefficient: 0.2998,
        unitPrice: 199.9)
}
