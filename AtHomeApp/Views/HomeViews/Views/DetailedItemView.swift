//
//  DetailedItemView.swift
//  AtHomeApp
//
//  Created by Apprenant 171 on 22/10/2024.
//

import SwiftUI

struct DetailedItemView: View {
    var body: some View {
        VStack {
            ImageObjectExView(imageSize: 200, imageUrl: "http://localhost:8081/images/spaces/garden.jpg")
//            ScrollView() {
//                VStack(spacing : 20) {
//                    ForEach (ScientificInfoViewModel.news) {news in
//                        NewsTagView(newsTitle: news.newsTitle, newsImage: news.newsImage, newsWebName: news.newsWebName, newsDate: news.newsDate, isFavorite: news.isFavorite)
//                    }
//                }
//            }
        }
    }
}

#Preview {
    DetailedItemView()
}
