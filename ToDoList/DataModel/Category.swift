//
//  Category.swift
//  ToDoList
//
//  Created by Sian Danforth on 24/01/2019.
//  Copyright © 2019 Sian Danforth. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var color: String = ""
    let items = List<Item>()
}
