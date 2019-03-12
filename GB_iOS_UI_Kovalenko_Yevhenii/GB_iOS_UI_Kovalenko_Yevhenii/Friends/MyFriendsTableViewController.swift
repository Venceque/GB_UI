//
//  MyFriendsTableViewController.swift
//  GB_iOS_UI_Kovalenko_Yevhenii
//
//  Created by Vence Berg on 08/03/2019.
//  Copyright © 2019 Vence Berg. All rights reserved.
//

import UIKit



extension BackView {
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
    
}


class MyFriendsTableViewController: UITableViewController {
    
       let friends = [(name:"Oleg",avatar:#imageLiteral(resourceName: "oleg")),(name:"George",avatar:#imageLiteral(resourceName: "kino-lyudi-muzhchiny-48222")),(name:"Lucy",avatar:#imageLiteral(resourceName: "devushki-lyudi-48120")),(name:"Vitaliy",avatar:#imageLiteral(resourceName: "boks-lyudi-muzhchiny-sport-48045")),(name:"Beyonce",avatar:#imageLiteral(resourceName: "devushki-lyudi-48309")),(name:"Lionel",avatar:#imageLiteral(resourceName: "ionel_ndres_essi_lionel_andres_messi-lyudi-muzhchiny-sport-47710")),(name:"Jean",avatar:#imageLiteral(resourceName: "kino-lyudi-muzhchiny-47871")),(name:"Angelina",avatar:#imageLiteral(resourceName: "andzhelina_dzholi_angelina_jolie-devushki-lyudi-48012")),(name:"Jack",avatar:#imageLiteral(resourceName: "dzhonni_depp_johnny_depp-kino-lyudi-48155")),(name:"Milla",avatar:#imageLiteral(resourceName: "devushki-lyudi-milla_jovovich_milla_jovovich-47760"))]
    
    
    
    
    // Смещение тени
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 3, height: 3)
    
    // Прозрачность тени
    @IBInspectable var shadowOpacity: Float = 0.3
    
    // Радиус блура тени
    @IBInspectable var shadowRadius: CGFloat = 5
    
    // Цвет тени
    @IBInspectable var shadowColor: UIColor = UIColor.black

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
        
      
        if  let backView  = cell.backViewForaAvatar {
            
            //backView.clipsToBounds = false
            backView.clipsToBounds = false
            backView.layer.shadowColor = UIColor.black.cgColor
            backView.layer.shadowRadius = 22
            backView.layer.shadowOffset = CGSize(width: 3, height: 3)
            backView.layer.shadowOpacity = 5
            
            
            backView.layer.cornerRadius = 64
            backView.backgroundColor = UIColor.clear
            // backView.layer.masksToBounds = true
            
        }

        cell.friendsName.text = friends[indexPath.row].name
        cell.friendsAvatar.image = friends[indexPath.row].avatar
        
        //cell.friendsAvatar.layer.cornerRadius = cell.friendsAvatar.frame.size.width / 2
       // cell.friendsAvatar.layer.masksToBounds = true

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
