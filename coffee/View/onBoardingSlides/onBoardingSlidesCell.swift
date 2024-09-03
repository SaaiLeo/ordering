//
//  onBoardingSlidesCell.swift
//  coffee
//
//  Created by Sei Mouk on 3/9/24.
//

import UIKit

class onBoardingSlidesCell: UICollectionViewCell {
    
    static let identifier = String(describing: onBoardingSlidesCell.self)
    
    @IBOutlet weak var slideImage: UIImageView!
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    
    func setup (_ slide: onBoardingSlide) {
        slideImage.image = slide.image
        slideTitleLabel.text = slide.title
        slideDescriptionLabel.text = slide.description
    }
}
