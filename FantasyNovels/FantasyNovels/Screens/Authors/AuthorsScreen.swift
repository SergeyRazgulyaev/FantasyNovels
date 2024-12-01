//
//  AuthorsScreen.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 30.11.2024.
//

import SwiftUI

/// Экран выбора авторов фантастической литературы
struct AuthorsScreen: View {

    // MARK: - Constants

    private enum Constants {
        static let authorsTitle: String = "Авторы"
        static let hStackSpacing: CGFloat = 10.0
        static let authorsImageCornerRadius: CGFloat = 10.0
        static let authorsImagePadding: CGFloat = 5.0
    }

    // MARK: - Properties

    /// Авторы фантастической литературы
    private let authorsCells: [AuthorsCellModel] = MockAuthorsCells.cells

    var body: some View {
        NavigationView {
            List(authorsCells) { item in
                NavigationLink(destination: Text(item.title)) {
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.headline)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(item.imageForegroundColor)
                            .cornerRadius(Constants.authorsImageCornerRadius)
                            .padding(.all, Constants.authorsImagePadding)
                        Text(item.description)
                            .foregroundColor(item.descriptionTextColor)
                            .multilineTextAlignment(.leading)
                            .padding([.leading, .bottom, .trailing], Constants.authorsImagePadding)
                    }
                }
            }.navigationBarTitle(Constants.authorsTitle)
        }
    }
}

#Preview {
    AuthorsScreen()
}
