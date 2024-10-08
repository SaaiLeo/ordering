//
//  CategoryCollectionViewCell.swift
//  coffee
//
//  Created by Sei Mouk on 4/9/24.
//

import UIKit
//import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)
    
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLabel: UILabel!

    func setup(category: DishCategory) {
        categoryTitleLabel.text = category.name
//        categoryImageView.kf.setImage(with: category.image.asUrl)
        categoryImageView.image = UIImage(named: category.name)
    }

}
