//
//  SearchPresenter.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 29.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import Foundation

class SearchPresenter: BasePresenter<SearchViewInputProtocol, SearchInteractorProtocol, SearchRouterProtocol>, SearchViewOutputProtocol {
    
    private var data: [BookDTO] = []
    
    func updateData(query: String) {
        interactor.loadData(query: query) { [weak self] collection in
            self?.setup(data: collection?.items ?? [])
        }
    }
    
    func setup(data: [BookDTO]) {
        self.data = data
        view.updateUI(data: data.map { SearchPresenterBookVMFactory.createViewModel(dto: $0) })
    }
    
    func selectItem(index: Int) {
        router.openDetails(book: data[index])
    }
}
