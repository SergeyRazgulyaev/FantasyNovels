//
//  GenresCellModel.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 01.12.2024.
//

import SwiftUICore

/// Модель ячейки для отображения жанров фантастической литературы
struct GenresCellModel: Identifiable {
    /// Заголовок
    let title: String
    /// Описание
    let description: String
    /// Цвет текста описания
    let descriptionTextColor: Color
    /// Наименование иконки
    let imageName: String
    /// Цвет иконки
    let imageForegroundColor: Color
    /// Идентификатор
    let id: String = UUID().uuidString
}
