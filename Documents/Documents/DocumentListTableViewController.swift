//
//  DocumentListTableViewController.swift
//  Documents
//
//  Created by Hayden on 8/31/18.
//  Copyright © 2018 Harrill, Hayden. All rights reserved.
//

import UIKit

class DocumentListTableViewController: UITableViewController {
    
    //let documents = 
    var docsDir: String?
    var dataFile: String = ""
    var fileManager: FileManager = FileManager.default
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Documents"
        checkFile()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func checkFile() {
        let dirPaths = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        dataFile = dirPaths[0].appendingPathComponent("datafile.dat").path
        
        if fileManager.fileExists(atPath: dataFile) {
            if let dataBuffer = fileManager.contents(atPath: dataFile) {
                let dataString = NSString(data: dataBuffer, encoding: String.Encoding.utf8.rawValue)
                DocumentTableViewCell.
                nameTextField.text = dataString as String?
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0//documents.count
    }
/*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DocCell", for: indexPath)
        
        //if let cell = cell as? DocumentListTableViewController {
            //let document = documents[indexPath.row]
            
            /*cell.nameLabel.text = document.name
            cell.sizeLabel.text = document.size
            cell.dateLabel.text = document.date*/
        }
        return cell
    }*/

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
