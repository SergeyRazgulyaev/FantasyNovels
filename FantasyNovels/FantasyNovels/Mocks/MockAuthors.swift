//
//  MockAuthors.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 01.12.2024.
//

enum MockAuthors {
    static let authors: [Author] = [
        .init(personalData: .init(name: "Айзек",
                                  surname: "Азимов",
                                  gender: .male,
                                  nationality: .american),
              books: [
                .init(title: "Академия",
                      genre: .spaceFiction,
                      authorsName: "Айзек Азимов"),
                .init(title: "Академия и Империя",
                      genre: .spaceFiction,
                      authorsName: "Айзек Азимов"),
                .init(title: "Вторая Академия",
                      genre: .spaceFiction,
                      authorsName: "Айзек Азимов"),
              ]),

            .init(personalData: .init(name: "Артур",
                                      surname: "Кларк",
                                      gender: .male,
                                      nationality: .american),
                  books: [
                    .init(title: "Конец детства",
                          genre: .spaceFiction,
                          authorsName: "Артур Кларк"),
                    .init(title: "Лунная пыль",
                          genre: .spaceFiction,
                          authorsName: "Артур Кларк"),
                    .init(title: "Город и звезды",
                          genre: .spaceFiction,
                          authorsName: "Артур Кларк")
                  ]),

            .init(personalData: .init(name: "Роберт",
                                      surname: "Хайнлайн",
                                      gender: .male,
                                      nationality: .american),
                  books: [
                    .init(title: "Звездный десант",
                          genre: .spaceFiction,
                          authorsName: "Роберт Хайнлайн"),
                    .init(title: "Дверь в лето",
                          genre: .spaceFiction,
                          authorsName: "Роберт Хайнлайн"),
                    .init(title: "Луна - суровая госпожа",
                          genre: .spaceFiction,
                          authorsName: "Роберт Хайнлайн")
                  ]),

            .init(personalData: .init(name: "Урсула",
                                      surname: "Ле Гуин",
                                      gender: .male,
                                      nationality: .american),
                  books: [
                    .init(title: "Волшебник Земноморья",
                          genre: .fantasy,
                          authorsName: "Урсула Ле Гуин"),
                    .init(title: "На последнем берегу",
                          genre: .fantasy,
                          authorsName: "Урсула Ле Гуин"),
                    .init(title: "Крылатые кошки",
                          genre: .fantasy,
                          authorsName: "Урсула Ле Гуин")
                  ]),

            .init(personalData: .init(name: "Александр",
                                      surname: "Громов",
                                      gender: .male,
                                      nationality: .american),
                  books: [
                    .init(title: "Реверс",
                          genre: .alternateHistory,
                          authorsName: "Александр Громов"),
                    .init(title: "Вычислитель",
                          genre: .spaceFiction,
                          authorsName: "Александр Громов")
                  ]),

            .init(personalData: .init(name: "Сергей",
                                      surname: "Лукьяненко",
                                      gender: .male,
                                      nationality: .american),
                  books: [
                    .init(title: "Ночной дозор",
                          genre: .fantasy,
                          authorsName: "Сергей Лукьяненко"),
                    .init(title: "Дневной дозор",
                          genre: .fantasy,
                          authorsName: "Сергей Лукьяненко"),
                    .init(title: "Форсайт",
                          genre: .scienceFiction,
                          authorsName: "Сергей Лукьяненко")
                  ])
    ]
}
