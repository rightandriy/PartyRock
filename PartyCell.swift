//
//  PartyCell.swift
//  PartyRock
//
//  Created by Andriy Pryvalov on 31.08.16.
//  Copyright © 2016 Andriy Pryvalov. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    @IBOutlet weak var videoPreviewImage: UIImageView!

    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func UpdateUI (partyRock: PartyRock) {
        videoTitle.text = partyRock.VideoTitle
        
    }

}
