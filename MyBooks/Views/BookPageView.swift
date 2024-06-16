//
//  BookPageView.swift
//  MyBooks
//
//  Created by Asya Tealdi on 16/06/2024.
//

import SwiftUI

struct BookPageView: View {
    var book: Book
    var body: some View {
        Text(book.volumeInfo.title)
            .font(.title)
    }
}

#Preview {
    BookPageView(book: mockBooks.first!)
}
