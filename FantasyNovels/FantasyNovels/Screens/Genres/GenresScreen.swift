//
//  GenresScreen.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 30.11.2024.
//

import SwiftUI

/// Виджет жанров фантастической литературы
struct GenresWidget: Identifiable {
    /// Заголовок виджета
    let title: String
    /// Описание виджета
    let description: String
    /// Цвет описания виджета
    let descriptionForegroundColor: Color
    /// Иконка виджета
    let imageName: String
    /// Цвет иконки виджета
    let imageForegroundColor: Color
    /// Идентификатор
    let id: Int = UUID().hashValue
}

/// Экран жанров фантастической литературы
struct GenresScreen: View {

    // MARK: - Constants

    private enum Constants {
        static let showcaseTitle: String = "Фантастическая литература"
        static let firstWidgetTitle: String = "Лучшие зарубежные авторы"
        static let secondWidgetTitle: String = "Лучшие российские авторы"
        static let thirdWidgetTitle: String = "Вся мировая фантастика"

        static let firstWidgetDescription: String =  "Читай лучших зарубежных авторов мировой фантастики!"
        static let secondWidgetDescription: String =  "Читай лучших российских авторов мировой фантастики!"
        static let thirdWidgetDescription: String =  "Все произведения мировой фантастики!"

        static let widgetsImageSystemName: String = "books.vertical.fill"

        static let firstWidgetImageForegroundColor: Color = .blue
        static let secondWidgetImageForegroundColor: Color = .red
        static let thirdWidgetImageForegroundColor: Color = .green
        static let descriptionForegroundColor: Color = .gray
    }

    let widgets: [GenresWidget] = [
        .init(title: Constants.firstWidgetTitle,
              description: Constants.firstWidgetDescription,
              descriptionForegroundColor: Constants.descriptionForegroundColor,
              imageName: Constants.widgetsImageSystemName,
              imageForegroundColor: Constants.firstWidgetImageForegroundColor),
        .init(title: Constants.secondWidgetTitle,
              description: Constants.secondWidgetDescription,
              descriptionForegroundColor: Constants.descriptionForegroundColor,
              imageName: Constants.widgetsImageSystemName,
              imageForegroundColor: Constants.secondWidgetImageForegroundColor),
        .init(title: Constants.thirdWidgetTitle,
              description: Constants.thirdWidgetDescription,
              descriptionForegroundColor: Constants.descriptionForegroundColor,
              imageName: Constants.widgetsImageSystemName,
              imageForegroundColor: Constants.thirdWidgetImageForegroundColor)
    ]

    var body: some View {

        NavigationView {

            VStack {
                Text(Constants.showcaseTitle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                List(widgets, id: \.id) { item in
                    NavigationLink(destination: Text(item.title)) {
                        VStack(alignment: .leading) {
                            HStack(spacing: 5.0) {
                                Image(systemName: item.imageName)
                                    .foregroundColor(item.imageForegroundColor)
                                Text(item.title)
                                    .font(.headline)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.leading)
                            }
                            .padding(.all, 5.0)

                            Text(item.description)
                                .foregroundColor(item.descriptionForegroundColor)
                                .multilineTextAlignment(.leading)
                                .padding([.leading, .bottom, .trailing], 5.0)
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
