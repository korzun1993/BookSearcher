//
//  ViewProtocol.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

protocol ViewProtocol {
    var viewController: UIViewController { get }
}

extension ViewProtocol where Self: UIViewController {
    var viewController: UIViewController { return self }
}
