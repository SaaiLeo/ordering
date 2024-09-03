//
//  onBoardingSlidesViewController.swift
//  coffee
//
//  Created by Sei Mouk on 3/9/24.
//

import UIKit

class onBoardingSlidesViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
    var slides : [onBoardingSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
    }
}
