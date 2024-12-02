//
//  BooksListModalScreen.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 01.12.2024.
//

import SwiftUI

struct BooksListModalScreen: View {


    // MARK: - Constants

    private enum Constants {
        static let hStackSpacing: CGFloat = 10.0
        static let vStackSpacing: CGFloat = 10.0
        static let bookImageWidth: CGFloat = 100.0
        static let bookImageHeight: CGFloat = 100.0
    }

    // MARK: - Properties

    private var books: [Book] = {
        var books: [Book] = []
        MockAuthors.authors.forEach { author in
            books.append(contentsOf: author.books)
        }
        return books
    }()

    var body: some View {
        List(books) { book in
            HStack(alignment: .center,
                   spacing: Constants.hStackSpacing) {
                Image(systemName: "book.pages")
                    .resizable()
                    .frame(width: Constants.bookImageWidth,
                           height: Constants.bookImageHeight)
                    .padding()
                VStack(alignment: .leading,
                       spacing: Constants.vStackSpacing) {
                    Text(book.authorsName).fontWeight(.bold)
                    Text(book.title)
                }
            }
        }
    }
}
