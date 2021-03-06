//
//  SearchViewOutputProtocol.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import Foundation

protocol SearchViewOutputProtocol {
    func updateData(query: String)
    func selectItem(index: Int)
}
