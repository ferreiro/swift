# Connecting View Elements with the Controller

Ios applications follow the following **MVC design pattern**

![Ios Applicacions MVC design pattern](/Assets/Apps/MVC_IOS.png)

### 1: Create outlets (variables) in the Controller  and link them with the objects in the View

1. In **ViewController.swift** Create 3 outlets (@IBOutlet) variables for the button, table and the TextField.

  ```Swift
  // ViewController.swift

  class ViewController: UIViewController {

    @IBOutlet weak var saveNoteButton: UIButton!
    @IBOutlet weak var noteTextField: UITextField!
    @IBOutlet weak var notesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  }
  ```

2. Go to **Main.storyboard**, and link those Buttons.

  **Press Control key** in the yellow round button and link it to the Buttons

  ![](/Assets/Apps/link_controller_button_to_view_1.png)

3. Select the Outlet (variable) corresponding to the one you created in the ViewController.swift (in this example, the viewButton)

  ![](/Assets/Apps/link_controller_button_to_view_2_outlets.png)

4. In **ViewController.swift** you should see the round filled.

  ![](/Assets/Apps/link_controller_button_to_view_3_filled.png)

### 2: Create an action in the Controller and link the action from the View to Controller

An action is a function that will be executed when a new event occurs in the View.

1. In **ViewController.swift** create an function with @IBAction.

  ```Swift
  class ViewController: UIViewController {

      // ... (same code as previously)

      @IBAction func saveNoteButtonPressed(sender: UIButton) {
          let text = noteTextField.text
          print("Button Pressed!")
          print("Text Field contains \(text)")
      }

      // ... (same code as previously)
  }
  ```

2. In **Main.storyboard**, click on the button + press control. Then link the button to the ViewController.swift

  ![](/Assets/Apps/link_controller_action_to_view_1.png)

3. Click the "saveNoteButtonPressed" action we created on **ViewController.swift**

  ![](/Assets/Apps/link_controller_action_to_view_2.png  )

4. Then in the **ViewController.swift** now the action round shape should appear filled.

  ![](/Assets/Apps/link_controller_action_to_view_3 .png)

### 3: It's time to create our Model and save the new notes into the model

1. Create a new file in Xcode of **Cocoa Touch Class**

  - Go to [ File > New File > File ]<br /><br />
    ![](/Assets/Apps/cocoa_touch_1.png)

  - Select Cocoa Touch Class<br /><br />
    ![](/Assets/Apps/cocoa_touch_2.png)

  - Must be **NSObject**<br /><br />
    ![](/Assets/Apps/cocoa_touch_3.png)

2. Create a variable **items** of type array of Strings and create 2 more methods: a **function to add** a new Item and a **function to display** all the items

  ```Swift
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
  ```

3. Now, we have to add this to the **ViewController.swift** as a variable

  **let** variables for objects, ensure you that the reference to the object is not changed (that is, you don't assign other object to that variable)

  ```Swift
  class ViewController: UIViewController {

    let todoList = TodoList()

    // Rest of the Properties and Functions Equal
  }
  ```

4. Finally, modify the **function action** in the **ViewController.swift** to storage the item into our model.

  ```Swift
  class ViewController: UIViewController {

    // Rest of the code equals

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

    // Rest of the code equals
  }
  ```

=============================
[<- Return Index](/README.md)
