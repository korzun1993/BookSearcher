//
//  Storyboard.swift
//  BookSearcher
//
//  Created by Vladyslav Korzun on 30.03.2021.
//  Copyright © 2021 VladyslavKorzun. All rights reserved.
//

import UIKit

class Storyboard {
    static func loadVC<T>() -> T {
        let screenId = String(describing: T.self)
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: screenId) as! T
    }
}
