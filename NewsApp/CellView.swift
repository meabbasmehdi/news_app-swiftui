//
//  CellView.swift
//  NewsApp
//
//  Created by Abbas Mehdi on 04/12/2024.
//


import SwiftUI
struct CellView: View {
    /// The article this row should be showing.
    let article: Article

    var body: some View {
        NavigationLink {
            ReadingView(article: article)
        } label: {
            HStack {
                AsyncImage(url: article.thumbnail) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                    default:
                        Image(systemName: "newspaper")
                    }
                }
                .frame(width: 80, height: 80)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 10))

                VStack(alignment: .leading) {
                    Text(article.section)
                        .font(.caption.weight(.heavy))
                    Text(article.title)
                }
            }
            .contentShape(Rectangle())
        }
    }
}

struct ArticleRow_Previews: PreviewProvider {
    static var previews: some View {
        CellView(article: .example)
    }
}
