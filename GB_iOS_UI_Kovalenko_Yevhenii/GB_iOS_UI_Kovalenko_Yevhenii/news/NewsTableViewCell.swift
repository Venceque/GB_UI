//
//  NewsTableViewCell.swift
//  GB_iOS_UI_Kovalenko_Yevhenii
//
//  Created by Vence Berg on 18/03/2019.
//  Copyright © 2019 Vence Berg. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
    
    @IBOutlet weak var newsTextView: UITextView!
    @IBOutlet weak var newsImageView: UIImageView!
    
    
    @IBOutlet weak var likeImageView: UIImageView!
    @IBOutlet weak var shareImageView: UIImageView!
    @IBOutlet weak var commentImageView: UIImageView!
    
    
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var shareLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    var likes = 0
    var shares = 0
    var comments = 0
    var notLiked = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupGestureRecognizer(likeImageView)
        setupGestureRecognizer(shareImageView)
        setupGestureRecognizer(commentImageView)
        textViewDidChange(newsTextView)
      
        // Initialization code
    }
    
    private func setupGestureRecognizer(_ localSender: UIImageView) {
        let gestureTap = UITapGestureRecognizer(target: self, action: #selector(imageViewTapped(sender:)))
        localSender.isUserInteractionEnabled = true
        gestureTap.numberOfTapsRequired = 1
        localSender.addGestureRecognizer(gestureTap)
    }
    
    
    @objc func imageViewTapped(sender: UIGestureRecognizer) {
        switch sender.view {
        case likeImageView:
            if notLiked{
                self.likes += 1
                notLiked = false
                likeImageView.image = #imageLiteral(resourceName: "liked")
                } else {
             self.likes -= 1
                notLiked = true
                likeImageView.image = #imageLiteral(resourceName: "notLiked")
            }
            likeLabel.text = String(likes)
        case shareImageView:
            self.shares += 1
            shareLabel.text = String(shares)
        case commentImageView:
            self.comments += 1
            commentLabel.text = String(comments)
        default:
            return
        }
        
}
    
    func textViewDidChange(_ textView: UITextView) {
        let fixedWidth = textView.frame.size.width
        textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        let newSize = textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        var newFrame = textView.frame
        newFrame.size = CGSize(width: max(newSize.width, fixedWidth), height: newSize.height)
        textView.frame = newFrame
    }

    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
