//
//  MyFriendsTableViewController.swift
//  GB_iOS_UI_Kovalenko_Yevhenii
//
//  Created by Vence Berg on 08/03/2019.
//  Copyright © 2019 Vence Berg. All rights reserved.
//

import UIKit

class MyFriendsTableViewController: UITableViewController {
    
       let friends = [(name:"Oleg",avatar:#imageLiteral(resourceName: "oleg")),(name:"George",avatar:#imageLiteral(resourceName: "kino-lyudi-muzhchiny-48222")),(name:"Lucy",avatar:#imageLiteral(resourceName: "devushki-lyudi-48120")),(name:"Vitaliy",avatar:#imageLiteral(resourceName: "boks-lyudi-muzhchiny-sport-48045")),(name:"Beyonce",avatar:#imageLiteral(resourceName: "devushki-lyudi-48309")),(name:"Lionel",avatar:#imageLiteral(resourceName: "ionel_ndres_essi_lionel_andres_messi-lyudi-muzhchiny-sport-47710")),(name:"Jean",avatar:#imageLiteral(resourceName: "kino-lyudi-muzhchiny-47871")),(name:"Angelina",avatar:#imageLiteral(resourceName: "andzhelina_dzholi_angelina_jolie-devushki-lyudi-48012")),(name:"Jack",avatar:#imageLiteral(resourceName: "dzhonni_depp_johnny_depp-kino-lyudi-48155")),(name:"Milla",avatar:#imageLiteral(resourceName: "devushki-lyudi-milla_jovovich_milla_jovovich-47760"))]

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
        return friends.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFID", for: indexPath) as! MyFriendsTableViewCell

        cell.friendsName.text = friends[indexPath.row].name
        cell.friendsAvatar.image = friends[indexPath.row].avatar

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


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowImage",
            let nextScene = segue.destination as? MyCollectionViewController,
            let indexPath = self.tableView.indexPathForSelectedRow {
            let selectedFriendImage = friends[indexPath.row].avatar
            nextScene.friendImage = selectedFriendImage
            
            
            
        }
    }

}
