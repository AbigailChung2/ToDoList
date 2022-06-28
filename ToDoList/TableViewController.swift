//
//  TableViewController.swift
//  ToDoList
//
//  Created by Sun A Kim on 6/27/22.
//

import UIKit

class TableViewController: UITableViewController {
    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }
    
    func createToDos() -> [ToDo] {
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the dog"
        
        let clean = ToDo()
        clean.name = "Do the laundry, clean the kitchen"
        
        return [swift, dog, clean]
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    override func tableView(_ tableview: UITableView, cellForRowAt
                            indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "🔥" + toDo.name
        } else {
            cell.textLabel?.text = "⬇️" + toDo.name
        }
        
        return cell
    }
}
