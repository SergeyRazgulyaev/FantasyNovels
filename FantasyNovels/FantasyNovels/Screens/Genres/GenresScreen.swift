//
//  GenresScreen.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 30.11.2024.
//

import SwiftUI

/// Экран жанров фантастической литературы
struct GenresScreen: View {

    // MARK: - Constants

    private enum Constants {
        static let genresTitle: String = "Жанры\nфантастической литературы"
        static let firstGenreTitle: String = "Лучшие зарубежные авторы"
        static let secondGenreTitle: String = "Лучшие российские авторы"
        static let thirdGenreTitle: String = "Вся мировая фантастика"

        static let firstGenreDescription: String =  "Читай лучших зарубежных авторов мировой фантастики!"
        static let secondGenreDescription: String =  "Читай лучших российских авторов мировой фантастики!"
        static let thirdGenreDescription: String =  "Все произведения мировой фантастики"

        static let genreImageSystemName: String = "books.vertical.fill"

        static let firstGenreImageForegroundColor: Color = .blue
        static let secondGenreImageForegroundColor: Color = .red
        static let thirdGenreImageForegroundColor: Color = .green
        static let descriptionForegroundColor: Color = .gray

        static let hStackSpacing: CGFloat = 10.0
        static let genreImageWidth: CGFloat = 30.0
        static let genreImageHeight: CGFloat = 30.0
        static let genrePadding: CGFloat = 5.0
    }

    // MARK: - Properties

    /// Жанры фантастической литературы
    private let genres: [GenresCellModel] = [
        .init(title: Constants.firstGenreTitle,
              description: Constants.firstGenreDescription,
              descriptionTextColor: Constants.descriptionForegroundColor,
              imageName: Constants.genreImageSystemName,
              imageForegroundColor: Constants.firstGenreImageForegroundColor),
        .init(title: Constants.secondGenreTitle,
              description: Constants.secondGenreDescription,
              descriptionTextColor: Constants.descriptionForegroundColor,
              imageName: Constants.genreImageSystemName,
              imageForegroundColor: Constants.secondGenreImageForegroundColor),
        .init(title: Constants.thirdGenreTitle,
              description: Constants.thirdGenreDescription,
              descriptionTextColor: Constants.descriptionForegroundColor,
              imageName: Constants.genreImageSystemName,
              imageForegroundColor: Constants.thirdGenreImageForegroundColor)
    ]

    var body: some View {

        NavigationView {

            VStack {
                Text(Constants.genresTitle)
                    .font(.headline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                List(genres) { item in
                    NavigationLink(destination: Text(item.title)) {
                        VStack(alignment: .leading) {
                            HStack(spacing: Constants.hStackSpacing) {
                                Image(systemName: item.imageName)
                                    .resizable()
                                    .frame(width: Constants.genreImageWidth,
                                           height: Constants.genreImageHeight)
                                    .foregroundColor(item.imageForegroundColor)
                                Text(item.title)
                                    .font(.headline)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.leading)
                            }
                            .padding(.all, Constants.genrePadding)

                            Text(item.description)
                                .foregroundColor(item.descriptionTextColor)
                                .multilineTextAlignment(.leading)
                                .padding([.leading, .bottom, .trailing], Constants.genrePadding)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    GenresScreen()
}
