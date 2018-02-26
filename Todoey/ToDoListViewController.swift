//
//  ViewController.swift
//  Todoey
//
//  Created by Adam Gibbs on 26/2/18.
//  Copyright © 2018 Adam Gibbs. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = ["Buy Bananas", "Buy Apples", "Buy Oranges"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        let cell = tableView.cellForRow(at: indexPath)
        if cell?.accessoryType == .checkmark {
            cell?.accessoryType = .none
        }
        else{
            cell?.accessoryType = .checkmark
        }
        //tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
