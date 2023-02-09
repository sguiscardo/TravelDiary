//
//  EntryListTableViewController.swift
//  TravelDiary
//
//  Created by Sebastian Guiscardo on 2/9/23.
//

import UIKit

class EntryListTableViewController: UITableViewController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return EntryController.sharedInstance.entries.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath) as? EntryTableViewCell else {return UITableViewCell()}
        
        // Configure the cell...
        let entryForTheCellToUpdateWith = EntryController.sharedInstance.entries[indexPath.row]
        cell.updateView(with: entryForTheCellToUpdateWith)
        
        return cell
    }
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let entryToBeDeleted = EntryController.sharedInstance.entries[indexPath.row]
            EntryController.sharedInstance.delete(entryToDelete: entryToBeDeleted)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
        // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //IIDOO
        if segue.identifier == "toDetailVC" {
            //what cell?
            if let placeholder = tableView.indexPathForSelectedRow {//placeholder could also be called index path. just make sure you understand what you call it.
                //what destination?
                if let destinationVC = segue.destination as? EntryDetailTableViewController {
                    //object to send
                    let entryToSend = EntryController.sharedInstance.entries[placeholder.row]
                    //object to receive
                        destinationVC.entryReciever = entryToSend
                    
                }
            }
        }
    }
}//end of class
