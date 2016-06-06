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


extension TodoList : UITableViewDataSource {
    
    // How many rows do you want the table to print?
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    // Here you iterate through the array and print them
    // How many times? The items.count you put on previous function
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let item = items[indexPath.row]
        
        cell.textLabel!.text = item
        return cell
    }
    
    
}