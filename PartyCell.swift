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
        
        let url = URL(string: partyRock.imgURL)!
        
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                    
                }
            }catch  {
                
            }
        }
        
    }

}
