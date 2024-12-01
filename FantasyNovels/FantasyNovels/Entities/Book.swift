//
//  Book.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 01.12.2024.
//

import SwiftUICore

/// Книги
struct Book: Identifiable {
    /// Название
    let title: String
    /// Жанр
    let genre: FantasyGenre
    /// Авторы
    let authorsName: String
    /// Дата публикации
    let publicationDate: Date? = nil
    /// Описание
    let description: String? = nil
    /// Изображение на обложке
    let image: Image? = nil
    /// Идентификатор
    let id: Int = UUID().hashValue
}
