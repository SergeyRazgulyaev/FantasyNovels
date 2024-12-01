//
//  AuthorsPersonalData.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 01.12.2024.
//

import SwiftUICore

/// Персональные данные автора
struct AuthorsPersonalData: Identifiable {
    /// Имя
    let name: String
    /// Фамилия
    let surname: String
    /// Отчество
    let patronymic: String? = nil
    /// Пол
    let gender: Gender
    /// Национальность
    let nationality: Nationality
    /// Фотография
    let photo: Image? = nil
    /// Идентификатор
    var id: Int = UUID().hashValue
}
