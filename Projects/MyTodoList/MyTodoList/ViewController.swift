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
    
    @IBOutlet weak var saveNoteButton: UIButton!
    @IBOutlet weak var noteTextField: UITextField!
    @IBOutlet weak var notesTableView: UITableView!
    
    @IBAction func saveNoteButtonPressed(sender: UIButton) {
       
        if let item = noteTextField.text {
            todoList.addItem(item)
            todoList.displayItems()
            print("Note Saved!")
        }
        else {
            print("You have to enter some text to save the note")
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

