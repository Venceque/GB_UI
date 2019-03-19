//
//  MyComTableViewController.swift
//  GB_iOS_UI_Kovalenko_Yevhenii
//
//  Created by Vence Berg on 08/03/2019.
//  Copyright © 2019 Vence Berg. All rights reserved.
//

import UIKit

class MyComTableViewController: UITableViewController {
    var myCommunities = [(name:"Ferrari World",avatar:#imageLiteral(resourceName: "avto-brendy-ferrari_ferrari-38408"))]

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
        return  myCommunities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyComID", for: indexPath) as! MyComTableViewCell

           cell.comNames.text = myCommunities[indexPath.row].name
           cell.comAvatars.image = myCommunities[indexPath.row].avatar

        return cell
    }
    
    @IBAction func addCommunity(seque: UIStoryboardSegue) {
        
        
        
        if seque.identifier == "addCom" {
            
            let globalComController = seque.source as! GlobalComTableViewController
            
            if let indexPath = globalComController.tableView.indexPathForSelectedRow{
                let community = globalComController.globalCom[indexPath.row]
                
                var cons = true
                
                for x in myCommunities {
                    
                    if community.name == x.name {
                        cons = false
                    }
          }
                
                
                 if cons {
                    
                    myCommunities.append(community)
                    tableView.reloadData()
                    
                }
                    
                else {
                    
                    let alter = UIAlertController(title: "Warning", message: "community already added", preferredStyle: .alert)
                    // Создаем кнопку для UIAlertController
                    let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    // Добавляем кнопку на UIAlertController
                    alter.addAction(action)
                    // Показываем UIAlertController
                    present(alter, animated: true, completion: nil)
                    
                }
                
            }
            
        }
    }
    

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
 
 // Override to support editing the table view.
 override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
 if editingStyle == .delete {
 myCommunities.remove(at: indexPath.row)
 tableView.deleteRows(at: [indexPath], with: .fade)
 } else if editingStyle == .insert {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }

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
