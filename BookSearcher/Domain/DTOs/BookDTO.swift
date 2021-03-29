//
//  BookDTO.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import Foundation

class BookDTO: Codable {
    var kind: String
    var id: String
    var etag: String
    var selfLink: String
    var volumeInfo: VolumeInfoDTO
    var saleInfo: SalesInfoDTO
    var accessInfo: AccessInfoDTO
}
