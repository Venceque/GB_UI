//
//  MyComTableViewCell.swift
//  GB_iOS_UI_Kovalenko_Yevhenii
//
//  Created by Vence Berg on 08/03/2019.
//  Copyright © 2019 Vence Berg. All rights reserved.
//

import UIKit

class MyComTableViewCell: UITableViewCell {
    
    
    
    
    @IBOutlet weak var comNames: UILabel!
    @IBOutlet weak var comAvatars: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
