//
//  FeedBackView.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 31.01.2024.
//

import SwiftUI

struct FeedBackView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("4.1")
                +
                Text(" | 19 Отзывов")
                    .foregroundColor(.gray)
                Spacer()
                SaleLabel()
            }
        }
        .frame(height: 40)
        .padding()
    }
}

struct SaleLabel: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            CurvedRectangle()
                .fill(.red)
            Text("-5%")
                .foregroundColor(.white)
                .font(.title3)
                .bold()
                .padding(.top, 8)
        }
        .frame(width: 50, height: 30)
    }
}

struct CurvedRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        
        path.move(to: CGPoint(x: 0, y: height/4))
        path.addQuadCurve(to: CGPoint(
            x: width, y: 0),
                          control: CGPoint(
                            x: width/1.8,
                            y: height / 2.5
                          ))
        
        path.addLine(to: CGPoint(x: width * 1.2, y: height))
        path.addQuadCurve(to: CGPoint(x: 0, y: height),
                          control: CGPoint(
                            x: width*0.7,
                            y: height*1.3
                          ))
        return path
    }
}

#Preview {
    FeedBackView()
}
