//
//  ContentView.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 30.11.2024.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Constants

    private enum Constants {
        static let showcaseScreenTabItemImageName: String = "books.vertical.fill"
        static let authorsScreenTabItemImageName: String = "sunglasses.fill"
        static let booksScreenTabItemImageName: String = "book.fill"
        static let favoritesScreenTabItemImageName: String = "star.fill"
    }

    // MARK: - Properties

    /// Выбранный таб
    @State var tabSelection: Tabs = .showcase

    var body: some View {
        TabView(selection: $tabSelection) {
            ShowcaseScreen()
                .tag(Tabs.showcase)
                .tabItem {
                    Label(Tabs.showcase.rawValue,
                          systemImage: Constants.showcaseScreenTabItemImageName)
                }
            AuthorsScreen()
                .tag(Tabs.authors)
                .tabItem {
                    Label(Tabs.authors.rawValue,
                          systemImage: Constants.authorsScreenTabItemImageName)
                }
            BooksScreen()
                .tag(Tabs.books)
                .tabItem {
                    Label(Tabs.books.rawValue,
                          systemImage: Constants.booksScreenTabItemImageName)
                }
            FavoritesScreen()
                .tag(Tabs.favorites)
                .tabItem {
                    Label(Tabs.favorites.rawValue,
                          systemImage: Constants.favoritesScreenTabItemImageName)
                }
        }.tabViewStyle(.tabBarOnly)
    }
}

#Preview {
    ContentView()
}
