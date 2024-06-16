//
//  BookDetailPageView.swift.swift
//  MyBooks
//
//  Created by Asya Tealdi on 16/06/2024.
//

import SwiftUI

struct BookDetailPageView: View {
    var book: Book
    var body: some View {
        ScrollView {
                   VStack(alignment: .leading, spacing: 16) {
                       if let imageUrl = book.volumeInfo.imageLinks?.thumbnail, let url = URL(string: imageUrl) {
                           AsyncImage(url: url) { image in
                               image
                                   .resizable()
                                   .scaledToFit()
                                   .frame(maxWidth: .infinity)
                                   .cornerRadius(10)
                           } placeholder: {
                               ProgressView()
                           }
                       }

                       Text(book.volumeInfo.title)
                           .font(.title)
                           .fontWeight(.bold)
                           .multilineTextAlignment(.center)

                       if let subtitle = book.volumeInfo.subtitle {
                           Text(subtitle)
                               .font(.title2)
                               .foregroundColor(.secondary)
                               .multilineTextAlignment(.center)
                       }

                       if let authors = book.volumeInfo.authors {
                           Text("By \(authors.joined(separator: ", "))")
                               .font(.headline)
                               .foregroundColor(.secondary)
                               .multilineTextAlignment(.center)
                       }

                       if let publisher = book.volumeInfo.publisher {
                           Text("Publisher: \(publisher)")
                               .font(.subheadline)
                               .foregroundColor(.secondary)
                       }

                       Text("Published Date: \(book.volumeInfo.publishedDate)")
                           .font(.subheadline)
                           .foregroundColor(.secondary)

                       if let description = book.volumeInfo.description {
                           Text(description)
                               .font(.body)
                               .multilineTextAlignment(.leading)
                       }

                       if let averageRating = book.volumeInfo.averageRating {
                           HStack {
                               Text("Rating: \(String(format: "%.1f", averageRating))")
                                   .font(.headline)
                               if let ratingsCount = book.volumeInfo.ratingsCount {
                                   Text("(\(ratingsCount) reviews)")
                                       .font(.subheadline)
                                       .foregroundColor(.secondary)
                               }
                           }
                       }

                       Spacer()
                   }
                   .padding()
               }
               .navigationTitle(book.volumeInfo.title)
               .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    BookDetailPageView(book: mockBooks.first!)
}
