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
        
        let url = URL(string: samiYusuf.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //handle the error
            }
        }
        
    }
}
