//
//  Authors.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 01.12.2024.
//

import SwiftUICore

/// Автор
struct Author {
    /// Персональные данные
    let personalData: AuthorsPersonalData
    /// Написанные книги
    let books: [Book]
}
