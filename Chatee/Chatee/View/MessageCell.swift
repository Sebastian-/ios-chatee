//
//  MessageCell.swift
//  Chatee
//
//  Created by Sebastian Murgu on 2020-02-24.
//  Copyright © 2020 Sebastian Murgu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
  @IBOutlet weak var senderImageView: UIImageView!
  @IBOutlet weak var senderLabel: UILabel!
  @IBOutlet weak var messageBodyLabel: UILabel!
  @IBOutlet weak var messageBodyBackground: UIView!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
