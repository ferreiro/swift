# Add items to the table

1. In the Model **TodoList.swift**, you extend the class UITableViewDataSource.

  And then, you create 2 methods:

  a) The first one you say how many rows do you want to insert.

  b) Then, in the second method, you return a Cell. 

  ```Swift    
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
  ```

2. Gsds

  ```Swift
  ```

3. Gsds

  ```Swift
  ```

4. Gsds

  ```Swift
  ```

=============================
[<- Return Index](/README.md)
