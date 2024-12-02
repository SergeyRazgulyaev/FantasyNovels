//
//  BooksScreen.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 30.11.2024.
//

import SwiftUI

/// Экран показа книг фантастической литературы
struct BooksScreen: View {

    // MARK: - Constants

    private enum Constants {
        static let authorsTitle: String = "Книги"
        static let booksButtonLabel: String = "Выбрать книги"

        static let bookButtonTextColor: Color = .black
        static let bookButtonColor: Color = .mint

        static let bookButtonWidth: CGFloat = 250
        static let bookButtonHeight: CGFloat = 30
        static let bookButtonCornerRadius: CGFloat = 10.0
    }

    // MARK: - Properties

    @State private var isModalPagePresented: Bool = false

    var body: some View {
        Button(action: {
            isModalPagePresented = true
        }) {
            Text(Constants.booksButtonLabel)
                .foregroundColor(Constants.bookButtonTextColor)
                .frame(width: Constants.bookButtonWidth,
                       height: Constants.bookButtonHeight,
                       alignment: .center)
                .background(Constants.bookButtonColor)
                .cornerRadius(Constants.bookButtonCornerRadius)
        }.sheet(isPresented: $isModalPagePresented) {
            BooksListModalScreen()
        }
    }
}
