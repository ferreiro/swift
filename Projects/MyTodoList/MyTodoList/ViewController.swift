//
//  ViewController.swift
//  MyTodoList
//
//  Created by JF on 04/06/16.
//  Copyright © 2016 Jorge Ferreiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let todoList = TodoList()
    
    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addButtonPressed(sender: UIButton) {
        if let newItem = itemTextField.text {
            todoList.addItem(newItem)
            print("Adding an element to the view \(newItem)")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

