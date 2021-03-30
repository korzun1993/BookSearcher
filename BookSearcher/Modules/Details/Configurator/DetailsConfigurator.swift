//
//  DetailsEntity.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 29.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class DetailsConfigurator {
    static func createDetailsView(book: BookDTO) -> ViewProtocol {
        let view: DetailsView = Storyboard.loadVC()
        let interactor = DetailsInteractor()
        let router = DetailsRouter(view: view)
        let presenter = DetailsPresenter(view: view, interactor: interactor, router: router)
        view.viewOutput = presenter
        presenter.book = book
        return view
    }
}
