//
//  ContentView.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 30.11.2024.
//

import SwiftUI

struct ContentView: View {

    /// Выбранный таб
    @State var tabSelection: TabSelections = .showcase

    var body: some View {
        TabView(selection: $tabSelection) {
            ShowcaseScreen() {

            }
            FavoritesScreen() {

            }
            GenresScreen() {

            }
            AuthorsScreen() {

            }
        }.tabViewStyle(.tabBarOnly)
    }
}

#Preview {
    ContentView()
}
