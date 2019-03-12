//
//  MyFriendsTableViewCell.swift
//  GB_iOS_UI_Kovalenko_Yevhenii
//
//  Created by Vence Berg on 08/03/2019.
//  Copyright © 2019 Vence Berg. All rights reserved.
//

import UIKit

class MyFriendsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var friendsName: UILabel!
    @IBOutlet weak var friendsAvatar: UIImageView!
    @IBOutlet weak var backViewForaAvatar: BackView!
    //  @IBOutlet weak var friendsAvatar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
