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
    /// Показатель перехода на экран просмотра произведений всех авторов
    @State var isAllAuthorsScreenActive: Bool = false

    var body: some View {
        TabView(selection: $tabSelection) {
            ShowcaseScreen(tabSelection: $tabSelection,
                           isAllAuthorsScreenActive: $isAllAuthorsScreenActive)
                .tag(Tabs.showcase)
                .tabItem {
                    Label(Tabs.showcase.rawValue,
                          systemImage: Constants.showcaseScreenTabItemImageName)
                }.toolbarBackground(.visible, for: .tabBar)
            AuthorsScreen(isAllAuthorsScreenActive: $isAllAuthorsScreenActive)
                .tag(Tabs.authors)
                .tabItem {
                    Label(Tabs.authors.rawValue,
                          systemImage: Constants.authorsScreenTabItemImageName)
                }.toolbarBackground(.visible, for: .tabBar)
            BooksScreen()
                .tag(Tabs.books)
                .tabItem {
                    Label(Tabs.books.rawValue,
                          systemImage: Constants.booksScreenTabItemImageName)
                }.toolbarBackground(.visible, for: .tabBar)
            FavoritesScreen()
                .tag(Tabs.favorites)
                .tabItem {
                    Label(Tabs.favorites.rawValue,
                          systemImage: Constants.favoritesScreenTabItemImageName)
                }.toolbarBackground(.visible, for: .tabBar)
        }.tabViewStyle(.tabBarOnly)
    }
}

#Preview {
    ContentView()
}
