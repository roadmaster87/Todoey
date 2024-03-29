//
//  ViewController.swift
//  Todoey
//
//  Created by Mohammed Almunajjed on 6/12/19.
//  Copyright © 2019 mohammed almunajjed. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["make find","kkl;kl;","met mjhj"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   //Mark - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //Mark - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        } else {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

