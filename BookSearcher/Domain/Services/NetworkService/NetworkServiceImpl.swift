//
//  NetworkServiceImpl.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit
import Alamofire

class NetworkServiceImpl: NetworkService {
    func getBooks(query: String, completion: @escaping BooksCallback) {
        let path = "/books/v1/volumes"
        let params = ["q": query]
        guard let url = URLBuilder().with(path: path).with(queryParams: params).build() else {
            return
        }
        Alamofire.request(url).response { response in
            completion(try? JSONDecoder().decode(BookCollection.self, from: response.data!))
        }
    }
}
