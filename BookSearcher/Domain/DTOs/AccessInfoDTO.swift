//
//  AccessInfoDTO.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import Foundation

class AccessInfoDTO: Codable {
    var country: String
    var viewability: String
    var embeddable: Bool
    var publicDomain: Bool
    var textToSpeechPermission: String
    var epub: AccessInfoAttributeDTO
    var pdf: AccessInfoAttributeDTO
    var webReaderLink: String
    var accessViewStatus: String
    var quoteSharingAllowed: Bool
}
