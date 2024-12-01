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
        static let showcaseTitle: String = "Зарубежная и российская фантастика"
        static let showcaseImageName: String = "space_ship"
        static let readButtonLabel: String = "Читать"

        static let readButtonTextColor: Color = .black

        static let showcaseVStackSpacing: CGFloat = 5.0
        static let showcaseTitleVerticalPadding: CGFloat = 10.0
        static let buttonVerticalPadding: CGFloat = 30.0
    }

    // MARK: - Properties

    var body: some View {
        VStack(alignment: .center) {

            VStack(alignment: .center,
                   spacing: Constants.showcaseVStackSpacing) {
                Text(Constants.showcaseTitle)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, Constants.showcaseTitleVerticalPadding)
                Image(Constants.showcaseImageName,
                      label: Text(Constants.showcaseTitle))
                .resizable()
                .aspectRatio(contentMode: .fill)
            }

            Button(action: {
                print("Action")
            }) {
                Text(Constants.readButtonLabel)
                    .foregroundColor(Constants.readButtonTextColor)
            }.padding(.vertical, Constants.buttonVerticalPadding)
        }
    }
}

#Preview {
    ShowcaseScreen()
}
