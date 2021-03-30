//
//  BaseRouter.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class BaseRouter {
    weak var view: ViewProtocol!
    
    init(view: ViewProtocol) {
        self.view = view
    }
}
