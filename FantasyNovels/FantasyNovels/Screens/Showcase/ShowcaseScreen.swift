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
        static let readButtonLabel: String = "Читать все произведения"

        static let readButtonTextColor: Color = .black
        static let readButtonColor: Color = .mint

        static let showcaseVStackSpacing: CGFloat = 5.0
        static let showcaseVStackVerticalPadding: CGFloat = 20.0
        static let showcaseTitleVerticalPadding: CGFloat = 10.0

        static let readButtonWidth: CGFloat = 250
        static let readButtonHeight: CGFloat = 30
        static let readButtonVerticalPadding: CGFloat = 10.0
        static let readButtonCornerRadius: CGFloat = 10.0
    }

    // MARK: - Properties

    /// Выбранный таб
    @Binding var tabSelection: Tabs
    /// Показатель перехода на экран просмотра произведений всех авторов
    @Binding var isAllAuthorsScreenActive: Bool

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                ScrollView(.vertical) {
                    VStack(alignment: .center,
                           spacing: Constants.showcaseVStackSpacing) {
                        Image(Constants.showcaseImageName,
                              label: Text(Constants.showcaseTitle))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.vertical, Constants.showcaseTitleVerticalPadding)

                        Button(action: {
                            tabSelection = .authors
                            isAllAuthorsScreenActive = true
                        }) {
                            Text(Constants.readButtonLabel)
                                .foregroundColor(Constants.readButtonTextColor)
                                .frame(width: Constants.readButtonWidth,
                                       height: Constants.readButtonHeight,
                                       alignment: .center)
                                .background(Constants.readButtonColor)
                                .cornerRadius(Constants.readButtonCornerRadius)
                        }.padding(.vertical, Constants.readButtonVerticalPadding)

                    }.padding(.bottom, Constants.showcaseVStackVerticalPadding)
                }
            }
            .navigationTitle(Text(Constants.showcaseTitle))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
