//
//  EnlightenmentCollectionViewCell.swift
//  Collectionview
//
//  Created by Students on 23/04/24.
//

import UIKit

class EnlightenmentCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageWidth: NSLayoutConstraint!
    @IBOutlet weak var imageHeight: NSLayoutConstraint!
    @IBOutlet weak var enlightenmentImageView: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    
    func setup(with enlightenment: Enlightenment) {
        enlightenmentImageView.image = enlightenment.image
        titlelabel.text = enlightenment.title
        }
}

