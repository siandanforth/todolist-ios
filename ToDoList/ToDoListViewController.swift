//
//  ViewController.swift
//  ToDoList
//
//  Created by Sian Danforth on 22/01/2019.
//  Copyright © 2019 Sian Danforth. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController{
    
    let itemArray = ["Buy hamster", "Get milk", "Get coffee"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell 
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print(itemArray[indexPath.row])
                
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
           tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
}

