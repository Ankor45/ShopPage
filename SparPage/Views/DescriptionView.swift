//
//  DescriptionView.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 01.02.2024.
//

import SwiftUI

struct DescriptionView: View {
    let description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Описание")
                .font(.title3)
                .bold()
            Text(description)
        }
        .padding(.trailing)
    }
}

#Preview {
    DescriptionView(description: "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
}
