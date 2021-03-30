//
//  SearchPresenterBookVM.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class SearchPresenterBookVM {
    let title: String
    let author: String?
    let thumbnailUrl: URL?
    
    init(title: String, author: String?, thumbnailUrl: URL?) {
        self.title = title
        self.author = author
        self.thumbnailUrl = thumbnailUrl
    }
}
