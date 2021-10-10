//
//  CollectionViewCell.swift
//  Login
//
//  Created by AUSTINE on 09/10/2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var prodImage: UIImageView!
    @IBOutlet weak var prodName: UILabel!
    
    override func awakeFromNib() {
       super.awakeFromNib()
        prodImage.layer.masksToBounds = true
   }
    
}
