//
//  SearchInteractor.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 29.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class SearchInteractor: SearchInteractorProtocol {
    
    let service: NetworkService
    var searchTask: DispatchWorkItem!
    var lastQuery: String?
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func loadData(query: String, completion: @escaping BooksCallback) {
        searchTask?.cancel()
        searchTask = DispatchWorkItem { [weak self] in
            self?.performRequestForData(query: query, completion: completion)
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5, execute: searchTask)
    }
    
    func performRequestForData(query: String, completion: @escaping BooksCallback) {
        lastQuery = query
        service.getBooks(query: query, completion: { [weak self] data in
            if query == self?.lastQuery { completion(data) }
        })
    }
}
