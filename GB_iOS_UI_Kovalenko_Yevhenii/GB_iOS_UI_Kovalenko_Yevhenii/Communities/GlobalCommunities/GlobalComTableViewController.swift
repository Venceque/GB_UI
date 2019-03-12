//
//  GlobalComTableViewController.swift
//  GB_iOS_UI_Kovalenko_Yevhenii
//
//  Created by Vence Berg on 08/03/2019.
//  Copyright © 2019 Vence Berg. All rights reserved.
//

import UIKit

class GlobalComTableViewController: UITableViewController {
    
     let globalCom = [(name:"The Simpsons",avatar:#imageLiteral(resourceName: "fon-gomer_simpson_homer_simpson-multfilmy-simpsony_the_simpsons-47437")),(name:"Budapest",avatar:#imageLiteral(resourceName: "arhitektura-pejzazh-40228")),(name:"Diving",avatar:#imageLiteral(resourceName: "subsurface-icon-icon")),(name:"Paris",avatar:#imageLiteral(resourceName: "ejfeleva_bashnya-goroda-pejzazh-48297")),(name:"Money Talks",avatar:#imageLiteral(resourceName: "Apps-gnucash-icon-icon")),(name:"Russian Culture",avatar:#imageLiteral(resourceName: "red-matreshka-inside-icon-icon")),(name:"Music",avatar:#imageLiteral(resourceName: "my-music")),(name:"Windows users",avatar:#imageLiteral(resourceName: "programs")),(name:"Nu Pogodi",avatar:#imageLiteral(resourceName: "multfilmy-38224")),(name:"Smotra.ru",avatar:#imageLiteral(resourceName: "avto-transport-48315"))]

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
        return globalCom.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gComID", for: indexPath) as! GlobalComTableViewCell
        
        cell.gComNames.text = globalCom[indexPath.row].name
        cell.gComAvatars.image = globalCom[indexPath.row].avatar
        
        
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

}
