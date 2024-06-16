//
//  SearchBookView.swift
//  MyBooks
//
//  Created by Asya Tealdi on 16/06/2024.
//

import SwiftUI

struct SearchBookView: View {
    @StateObject private var vm = BooksViewModel()
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Search books", text: $searchText, onCommit: {
                    vm.fetchBooks(query: searchText)
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

                List(vm.books) { book in
                    NavigationLink {
                        BookDetailPageView(vm: vm, book: book)
                    } label: {
                        VStack(alignment: .leading) {
                            Text(book.volumeInfo.title)
                                .font(.headline)
                            Text(book.volumeInfo.authors?.joined(separator: ", ") ?? "Unknown Author")
                                .font(.subheadline)
                            if let description = book.volumeInfo.description {
                                Text(description)
                                    .font(.body)
                                    .lineLimit(3)
                            }
                        }
                    }
                }
                .navigationTitle("Google Books")
            }
        }
    }
}

#Preview {
    SearchBookView()
}
