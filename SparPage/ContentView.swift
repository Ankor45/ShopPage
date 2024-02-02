//
//  ContentView.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 31.01.2024.
//

import SwiftUI

struct ContentView: View {
    let product = ProductData.getProductData()
    var body: some View {
        VStack {
            TabView {
                ProductView(productData: product)
                    .tabItem {
                        Image("Main")
                            .renderingMode(.template)
                        Text("Главная")
                    }
                    .tag(1)
                Text("Каталог")
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Каталог")
                    }
                    .tag(2)
                Text("Корзина")
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                    .tag(3)
                Text("Профиль")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
                    .tag(4)
            }
            .accentColor(.green)
        }
    }
}

#Preview {
    ContentView()
}
