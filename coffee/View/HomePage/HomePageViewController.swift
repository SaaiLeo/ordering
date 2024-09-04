//
//  HomePageViewController.swift
//  coffee
//
//  Created by Sei Mouk on 3/9/24.
//

import UIKit

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Coffee", image: "https://raw.githubusercontent.com/SaaiLeo/ordering/main/ImagesSource/cappuccino.png"),
        .init(id: "id1", name: "Coffee2", image: "https://raw.githubusercontent.com/SaaiLeo/ordering/main/ImagesSource/cappuccino.png"),
        .init(id: "id1", name: "Coffee3", image: "https://raw.githubusercontent.com/SaaiLeo/ordering/main/ImagesSource/cappuccino.png"),
        .init(id: "id1", name: "Coffee4", image: "https://raw.githubusercontent.com/SaaiLeo/ordering/main/ImagesSource/cappuccino.png"),
        .init(id: "id1", name: "Coffee5", image: "https://raw.githubusercontent.com/SaaiLeo/ordering/main/ImagesSource/cappuccino.png"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "App name"
        registerCells()
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
}

extension HomePageViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        
        return cell
    }
    
    
}
