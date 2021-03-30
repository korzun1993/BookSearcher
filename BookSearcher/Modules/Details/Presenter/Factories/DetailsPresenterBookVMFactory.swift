//
//  DetailsPresenterBoolVMFactory.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class DetailsPresenterBookVMFactory {
    static func createViewModel(dto: BookDTO) -> DetailsPresenterBookVM {
        return DetailsPresenterBookVM(title: dto.volumeInfo.title,
                                     author: dto.volumeInfo.authors?.joined(separator: ", "),
                                     thumbnailUrl: URL(string: dto.volumeInfo.imageLinks.thumbnail),
                                     description: dto.volumeInfo.description)
    }
}
