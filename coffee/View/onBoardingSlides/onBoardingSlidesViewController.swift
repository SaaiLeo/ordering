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
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextButton.setTitle("Get Start!", for: .normal)
            }else {
                nextButton.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides.append(onBoardingSlide(image: #imageLiteral(resourceName: "no_queue.jpeg"), title: "No need to Stand in line", description: "With our app you can order without standing in line. Just relax in your seat and we will bring your order to you when it's ready."))
        slides.append(onBoardingSlide(image: #imageLiteral(resourceName: "no_queue.jpeg"), title: "No need to Stand in line2", description: "With our app you can order without standing in line. Just relax in your seat and we will bring your order to you when it's ready."))
        slides.append(onBoardingSlide(image: #imageLiteral(resourceName: "no_queue.jpeg"), title: "No need to Stand in line3", description: "With our app you can order without standing in line. Just relax in your seat and we will bring your order to you when it's ready."))
        
        
        
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        if currentPage == slides.count - 1 {
            print("Get started")
        }else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
}

extension onBoardingSlidesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: onBoardingSlidesCell.identifier, for: indexPath) as! onBoardingSlidesCell
        
        cell.setup(slides[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        
    }
    
    
}
