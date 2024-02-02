//
//  CountryLabelView.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 01.02.2024.
//

import SwiftUI

struct CountryLabelView: View {
    let countryFlag: String
    let manufacturePlace: String
   
    var body: some View {
        VStack {
            HStack {
                Image(countryFlag)
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                    .frame(width: 50)
                Text(manufacturePlace)
                Spacer()
            }
            .padding(.leading,8)
        .frame(height: 40)
        }
    }
}

#Preview {
    CountryLabelView(countryFlag: "SpainFlag", manufacturePlace: "Испания, Риоха")
}
