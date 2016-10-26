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

class HistoryTableViewController: UITableViewController {
    
    var historyArray : [HistoryObjects]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //TODO: Hardcoded data
        
        historyArray = [
            HistoryObjects(sectionName: "Section 1", sectionObjects: ["obj1","obj2","obj3","obj1","obj2","obj3","obj1","obj2","obj3","obj1","obj2","obj3"]),
            HistoryObjects(sectionName: "Section 2", sectionObjects: ["obj3","obj4","obj5","obj1","obj2","obj3","obj1","obj2","obj3","obj1","obj2","obj3"])]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return historyArray?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyArray?[section].sectionObjects?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath)

        let history = historyArray?[indexPath.section].sectionObjects?[indexPath.row]
        
        cell.textLabel?.text = history
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return historyArray?[section].sectionName ?? "No name"
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
