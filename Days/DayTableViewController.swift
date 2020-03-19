//
//  DayTableViewController.swift
//  Days
//
//  Created by theevo on 2/25/20.
//  Copyright © 2020 theevo. All rights reserved.
//

import UIKit

class DayTableViewController: UITableViewController {
    
    // MARK: - Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DayController.days.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        
        let day = DayController.days[indexPath.row]
        
        cell.textLabel?.text = "\(day.name)"

        return cell
    }
    
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // IIDOO
        
        // Identifier
        if segue.identifier == "ToDayDetail" {
            
            // Index Path
            if let indexPath = tableView.indexPathForSelectedRow {
            
                // Destination
                
                if let destinationVC = segue.destination as? DayDetailViewController {
                    
                    // Object - Ready
                    let day = DayController.days[indexPath.row]
                    
                    // Object - Sent
                    destinationVC.dayLandingPad = day
                }
            }
        }
    }
}
