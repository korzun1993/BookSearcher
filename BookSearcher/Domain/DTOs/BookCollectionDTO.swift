//
//  BookCollection.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import Foundation

class BookCollection: Codable {
    var kind: String
    var totalItems: Int
    var items: [BookDTO]
}
