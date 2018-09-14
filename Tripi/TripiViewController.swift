//
//  ViewController.swift
//  Tripi
//
//  Created by user on 29.08.2018.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class TripiViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tripiTableView: UITableView!
    let menuArray = ["Plan Weekend Trip", "Plan Custom Trip"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tripiTableView.delegate = self
        tripiTableView.dataSource = self
    }
    
    // MARK: - Table View DataSource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = menuArray[indexPath.row]
        return cell
    }
    
    // MARK: - Table View Delegate Methods
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tripiTableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "GoToJurneyVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! JourneyTableViewController
        destinationVC.kasia = "asdas"
    }

}
