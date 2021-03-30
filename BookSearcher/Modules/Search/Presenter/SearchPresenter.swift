//
//  SearchPresenter.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 29.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import Foundation

class SearchPresenter: SearchViewOutputProtocol {
    private let interactor: SearchInteractorProtocol
    private weak var view: SearchViewInputProtocol!
    private let router: SearchRouterProtocol
    
    private var data: [BookDTO] = []
    
    init(view: SearchViewInputProtocol, interactor: SearchInteractorProtocol, router: SearchRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func updateData(query: String) {
        interactor.loadData(query: query) { [weak self] collection in
            self?.setup(data: collection?.items ?? [])
        }
    }
    
    func setup(data: [BookDTO]) {
        self.data = data
        view.updateUI(data: data.map { SearchPresenterBookVMFactory.createViewModel(dto: $0) })
    }
}
