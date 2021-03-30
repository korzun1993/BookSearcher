//
//  SearchRouter.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 29.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class SearchRouter: BaseRouter, SearchRouterProtocol {    
    func openDetails(book: BookDTO) {
        let viewController = DetailsConfigurator.createDetailsView(book: book).viewController
        view.viewController.navigationController?.pushViewController(viewController, animated: true)
    }
}
