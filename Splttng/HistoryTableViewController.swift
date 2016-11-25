//
//  HistoryTableViewController.swift
//  Splttng
//
//  Created by Milo on 10/17/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import UIKit

struct HistoryObjects {
    var sectionName : String?
    var sectionObjects : [String]?
}

class HistoryTableViewController: UIViewController {
    
    var historyArray : [HistoryObjects]?
    @IBOutlet weak var tableView: UITableView!
    
    let historyCellIdentifier = "historyCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self;
        self.tableView.dataSource = self;

        //TODO: Hardcoded data
        
        historyArray = [
            HistoryObjects(sectionName: "Checks", sectionObjects: ["obj1","obj2","obj3","obj1","obj2","obj3","obj1","obj2","obj3","obj1","obj2","obj3"]),
            HistoryObjects(sectionName: "Group Expenses", sectionObjects: ["obj3","obj4","obj5","obj1","obj2","obj3","obj1","obj2","obj3","obj1","obj2","obj3"])]
    }
}

// MARK: - Table view delegate
extension HistoryTableViewController : UITableViewDelegate {
    
    
}

// MARK: - Table view data source
extension HistoryTableViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return historyArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyArray?[section].sectionObjects?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: historyCellIdentifier, for: indexPath)
        
        let history = historyArray?[indexPath.section].sectionObjects?[indexPath.row]
        cell.textLabel?.text = history
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return historyArray?[section].sectionName ?? "No name"
    }
}

