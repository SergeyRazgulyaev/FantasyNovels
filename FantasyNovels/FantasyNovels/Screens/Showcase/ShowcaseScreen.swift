//
//  ShowcaseScreen.swift
//  FantasyNovels
//
//  Created by Sergey Razgulyaev on 30.11.2024.
//

import SwiftUI

/// Экран витрины фантастической литературы
struct ShowcaseScreen: View {

    // MARK: - Constants

    private enum Constants {
        static let readButtonLabel: String = "Читать"
    }

    // MARK: - Properties

    var body: some View {
        Button(Constants.readButtonLabel) {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
    }
}

#Preview {
    ShowcaseScreen()
}
