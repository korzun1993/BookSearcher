//
//  NetworkService.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import Foundation

typealias BooksCallback = (BookCollection?) -> Void

protocol NetworkService {
    func getBooks(query: String, completion: @escaping BooksCallback)
}
