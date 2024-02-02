//
//  ReviewView.swift
//  SparPage
//
//  Created by Andrei Kovryzhenko on 01.02.2024.
//

import SwiftUI

struct ReviewView: View {
    let userReview: UserReview
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Отзывы")
                    .font(.title2)
                    .bold()
                Spacer()
                Button(action: {}) {
                    Text("Все 153")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.green)
                }
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    UserReviewView(reviewerName: userReview.reviewerName, date: userReview.date, starsRating: userReview.starsRating, reviewText: userReview.reviewText)
                    UserReviewView(reviewerName: "Александр В.", date: "7 мая 2021", starsRating: 4, reviewText: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                    UserReviewView(reviewerName: "Александр В.", date: "7 мая 2021", starsRating: 4, reviewText: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                }
            }
            
            Button(action: {}) {
                Text("Оставить отзыв")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.green)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 40)
            .background(
                RoundedRectangle(cornerRadius: 36)
                    .stroke(Color.green, lineWidth: 3)
            )
            .padding()
        }
        .padding(.vertical)
    }
}

struct UserReviewView: View {
    let reviewerName: String
    let date: String
    let starsRating: Int
    let reviewText: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.1), radius: 6)
            VStack {
                HStack {
                    Text(reviewerName)
                        .bold()
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 2, trailing: 0))
                HStack {
                    Text(date)
                        .foregroundColor(.gray)
                        .font(.caption2)
                    Spacer()
                }
                HStack {
                    ForEach(0...4, id: \.self) {i in
                        Image(systemName: "star.fill")
                            .foregroundColor( i < starsRating ? .yellow : .gray)
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                }
                Text(reviewText)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .font(.system(size: 13))
            }
            .padding(10)
        }
        .frame(width: 220, height: 140)
    }
}


#Preview {
    ZStack {
        Color(UIColor.red).opacity(0.05)
        ReviewView(userReview: UserReview())
    }
}
