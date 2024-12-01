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
        static let genresTitle: String = "Жанры"
        static let foreignGenreTitle: String = "Лучшие зарубежные авторы"
        static let russianGenreTitle: String = "Лучшие российские авторы"
        static let worldGenreTitle: String = "Все авторы"

        static let foreignGenreDescription: String =  "Читай произведения лучших зарубежных авторов мировой фантастики!"
        static let russianGenreDescription: String =  "Читай произведения лучших российских авторов мировой фантастики!"
        static let worldGenreDescription: String =  "Все произведения мировой фантастики"

        static let foreignGenreImageName: String = "foreign_fantasy"
        static let russianGenreImageName: String = "russian_fantasy"
        static let worldGenreImageName: String = "world_fantasy"

        static let foreignGenreImageForegroundColor: Color = .blue
        static let russianGenreImageForegroundColor: Color = .red
        static let worldGenreImageForegroundColor: Color = .green
        static let descriptionForegroundColor: Color = .gray

        static let hStackSpacing: CGFloat = 10.0
        static let genreImageCornerRadius: CGFloat = 10.0
        static let genrePadding: CGFloat = 5.0
    }

    // MARK: - Properties

    /// Жанры фантастической литературы
    private let genres: [GenresCellModel] = [
        .init(title: Constants.foreignGenreTitle,
              description: Constants.foreignGenreDescription,
              descriptionTextColor: Constants.descriptionForegroundColor,
              imageName: Constants.foreignGenreImageName,
              imageForegroundColor: Constants.foreignGenreImageForegroundColor),
        .init(title: Constants.russianGenreTitle,
              description: Constants.russianGenreDescription,
              descriptionTextColor: Constants.descriptionForegroundColor,
              imageName: Constants.russianGenreImageName,
              imageForegroundColor: Constants.russianGenreImageForegroundColor),
        .init(title: Constants.worldGenreTitle,
              description: Constants.worldGenreDescription,
              descriptionTextColor: Constants.descriptionForegroundColor,
              imageName: Constants.worldGenreImageName,
              imageForegroundColor: Constants.worldGenreImageForegroundColor)
    ]

    var body: some View {
        NavigationView {
            List(genres) { item in
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
                            .cornerRadius(Constants.genreImageCornerRadius)
                            .padding(.all, Constants.genrePadding)
                        Text(item.description)
                            .foregroundColor(item.descriptionTextColor)
                            .multilineTextAlignment(.leading)
                            .padding([.leading, .bottom, .trailing], Constants.genrePadding)
                    }
                }
            }.navigationBarTitle(Constants.genresTitle)
        }
    }
}

#Preview {
    GenresScreen()
}
