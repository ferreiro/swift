//
//  TodoList.swift
//  MyTodoList
//
//  Created by JF on 06/06/16.
//  Copyright © 2016 Jorge Ferreiro. All rights reserved.
//

import UIKit

class TodoList: NSObject {
    
    var items: [String] = []
    
    func addItem(newItem: String) {
        items.append(newItem)
    }

    func displayItems() {
        for item in items {
            print(item)
        }
    }
}
