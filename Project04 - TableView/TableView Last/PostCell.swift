//
//  PostCell.swift
//  TableView Last
//
//  Created by 付晓 on 2016/10/21.
//  Copyright © 2016年 付晓. All rights reserved.
//

import UIKit

struct Post {
    let top: String
    let avatar : String
    let nikcname : String
    let username : String
    let content : String
    let created_at : String
    
}

class PostCell: UITableViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nicknameLabel: UILabel!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
