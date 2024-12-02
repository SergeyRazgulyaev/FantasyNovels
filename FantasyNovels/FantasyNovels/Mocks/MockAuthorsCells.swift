//
//  MockAuthorsCells.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 01.12.2024.
//

import SwiftUICore

enum MockAuthorsCells {
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

    static let cells: [AuthorsCellModel] = [
        .init(title: worldGenreTitle,
              description: worldGenreDescription,
              descriptionTextColor: descriptionForegroundColor,
              imageName: worldGenreImageName,
              imageForegroundColor: worldGenreImageForegroundColor),
        .init(title: foreignGenreTitle,
              description: foreignGenreDescription,
              descriptionTextColor: descriptionForegroundColor,
              imageName: foreignGenreImageName,
              imageForegroundColor: foreignGenreImageForegroundColor),
        .init(title: russianGenreTitle,
              description: russianGenreDescription,
              descriptionTextColor: descriptionForegroundColor,
              imageName: russianGenreImageName,
              imageForegroundColor: russianGenreImageForegroundColor)
    ]
}

