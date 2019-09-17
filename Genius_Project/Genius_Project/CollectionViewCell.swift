//
//  CollectionViewCell.swift
//  Genius_Project
//
//  Created by admin on 17/09/2019.
//  Copyright © 2019 RenoyChowdhury. All rights reserved.
//

import UIKit

class CollectionViewCell:

UICollectionViewCell {
    
    @IBOutlet weak var iamgeView: UIImageView!
    @IBOutlet weak var widthConstant: NSLayoutConstraint!
    
    override func awakeFromNib() {
        if let width = window?.frame.width {
            widthConstant.constant = width / 3
        }
    }
}
