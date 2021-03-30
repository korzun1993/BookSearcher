//
//  SearchRouter.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 29.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class SearchRouter: SearchRouterProtocol {
    private weak var view: ViewProtocol!
    
    init(view: ViewProtocol) {
        self.view = view
    }
}
