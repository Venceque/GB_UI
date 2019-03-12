//
//  avatarImageView.swift
//  GB_iOS_UI_Kovalenko_Yevhenii
//
//  Created by Vence Berg on 12/03/2019.
//  Copyright © 2019 Vence Berg. All rights reserved.
//

import UIKit

class AvatarImageView: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.size.width / 2
        self.contentMode = .scaleAspectFit
        self.clipsToBounds = true
    }
}
