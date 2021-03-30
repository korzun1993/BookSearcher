//
//  DetailsPresenter.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 29.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class DetailsPresenter: BasePresenter<DetailsViewInputProtocol, DetailsInteractorProtocol, DetailsRouterProtocol>, DetailsViewOutputProtocol {
    var book: BookDTO!
    
    func loadData() {
        view.show(details: DetailsPresenterBookVMFactory.createViewModel(dto: book))
    }
}
