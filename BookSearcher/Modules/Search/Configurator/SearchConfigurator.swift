//
//  SearchEntity.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 29.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class SearchConfigurator {
    static func createSearchView() -> ViewProtocol {
        let view: SearchView = Storyboard.loadVC()
        let interactor = SearchInteractor(service: NetworkServiceImpl())
        let router = SearchRouter(view: view)
        view.viewOutput = SearchPresenter(view: view, interactor: interactor, router: router)
        return view
    }
}
