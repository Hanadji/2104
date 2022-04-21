//
//  TableViewController.swift
//  3432
//
//  Created by Гость on 14.04.2022.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayCountries = ["Russia", "France", "japan", "China"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayCountries.count
    }


   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! CustomCell
        //Configure the cell...
           
        cell.cellLabel.text = arrayCountries[indexPath.row]
         
        return cell
    }
    
   
    @IBAction func addNewCityAction(_ sender: Any) {
    
    let alert = UIAlertController(title: "Add new country", message: "Enter name  new country", preferredStyle: .alert)
    
    //self.present(alert, animated: true, completion: nil)
    
    alert.addTextField { (textField) in textField.placeholder = "Example: Russia"
        
        let addAction = UIAlertAction(title: "Add", style: .default)
        {
            (actionAdd) in
            let country = alert.textFields![0].text!
            self.arrayCountries.append(country)
            self.tableView.reloadData()}
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
        alert.addAction(addAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
       // self.tableView.reloadData()
        }


}
}
