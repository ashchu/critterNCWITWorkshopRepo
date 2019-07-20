//
//  CritterTableViewController.swift
//  CritterContacts
//
//  Created by YOU on 7/20/19.
//

import UIKit
import os.log

class CritterTableViewController: UITableViewController {

    //MARK: Properties

    var critters = [Critter]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Load the sample data
        loadSampleCritters()

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
        return critters.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellIdentifier = "CritterTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CritterTableViewCell else {
            fatalError("not a critter call")
        }
        
        let critter = critters[indexPath.row]
        cell.nameLabel.text = critter.name
        cell.photoImageView.image = critter.photo
        //Configure the cell...

        return cell
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Actions
    
    
    //MARK: Private Methods
    private func loadSampleCritters(){
        let response = "Sorry your critter did not want to see you today :("
        let photo1 = UIImage(named: "defaultPhoto")
        guard let critter1 = Critter(name: "charlotteeee", photo: photo1) else {
            fatalError(response)
        }
        
        critters += [critter1]
        
        guard let critter2 = Critter(name: "Lolo", photo: photo1) else{
            fatalError(response)
        }
        
        critters += [critter2]
        
    }
    
    
}
