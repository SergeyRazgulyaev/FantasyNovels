//
//  ContentView.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 30.11.2024.
//

import SwiftUI

struct ContentView: View {

    // Constants

    private enum Constants {
        static let showcaseScreenTabItemName: String = "Витрина"
        static let genresScreenTabItemName: String = "Жанры"
        static let authorsScreenTabItemName: String = "Авторы"
        static let favoritesScreenTabItemName: String = "Избранное"

        static let showcaseScreenTabItemImageName: String = "books.vertical.fill"
        static let genresScreenTabItemImageName: String = "theatermasks.fill"
        static let authorsScreenTabItemImageName: String = "sunglasses.fill"
        static let favoritesScreenTabItemImageName: String = "star.fill"
    }

    /// Выбранный таб
    @State var tabSelection: Tabs = .showcase

    var body: some View {
        TabView(selection: $tabSelection) {
            ShowcaseScreen()
                .tag(Tabs.showcase)
                .tabItem {
                    Label(Constants.showcaseScreenTabItemName,
                          systemImage: Constants.showcaseScreenTabItemImageName)
                }
            GenresScreen()
                .tag(Tabs.genres)
                .tabItem {
                    Label(Constants.genresScreenTabItemName,
                          systemImage: Constants.genresScreenTabItemImageName)
                }
            AuthorsScreen()
                .tag(Tabs.authors)
                .tabItem {
                    Label(Constants.authorsScreenTabItemName,
                          systemImage: Constants.authorsScreenTabItemImageName)
                }
            FavoritesScreen()
                .tag(Tabs.favorites)
                .tabItem {
                    Label(Constants.favoritesScreenTabItemName,
                          systemImage: Constants.favoritesScreenTabItemImageName)
                }
        }.tabViewStyle(.tabBarOnly)
    }
}

#Preview {
    ContentView()
}
