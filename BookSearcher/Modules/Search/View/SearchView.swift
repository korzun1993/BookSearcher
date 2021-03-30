//
//  SearchView.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 29.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class SearchView: UIViewController, SearchViewInputProtocol, ViewProtocol {

    @IBOutlet private weak var searchBar: UISearchBar!
    @IBOutlet private weak var tableView: UITableView!
    
    var viewOutput: SearchViewOutputProtocol!
    
    var items: [SearchPresenterBookVM] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = searchBar
    }
    
    func updateUI(data: [SearchPresenterBookVM]) {
        items = data
        tableView.reloadData()
    }
}

extension SearchView: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewOutput.updateData(query: searchBar.text ?? "")
    }
}

extension SearchView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SearchViewTableViewCell.self),
                                                 for: indexPath)
        (cell as? SearchViewTableViewCell)?.setup(data: items[indexPath.row])
        return cell
    }
}
