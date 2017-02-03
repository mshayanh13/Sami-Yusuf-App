//
//  SamiYusufCell.swift
//  SamiYusufApp
//
//  Created by Mohammad Hemani on 2/3/17.
//  Copyright © 2017 Mohammad Hemani. All rights reserved.
//

import UIKit

class SamiYusufCell: UITableViewCell {
    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func updateUI(samiYusuf: SamiYusuf) {
        videoTitle.text = samiYusuf.videoTitle
        //TODO: set image from url
        
    }
}
