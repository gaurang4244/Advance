//
//  SlideImageViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 22/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit
import ImageSlideshow

class SlideImageViewController: UIViewController {

    @IBOutlet weak var slideshow: ImageSlideshow!
     let localSource = [ImageSource(imageString: "img1")!, ImageSource(imageString: "img2")!, ImageSource(imageString: "img3")!, ImageSource(imageString: "img4")!]
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        slideshow.backgroundColor = UIColor.white
        slideshow.slideshowInterval = 2.0
          slideshow.pageControlPosition = PageControlPosition.underScrollView
         slideshow.pageControl.currentPageIndicatorTintColor = UIColor.lightGray
        slideshow.pageControl.pageIndicatorTintColor = UIColor.black
        slideshow.contentScaleMode = UIViewContentMode.scaleToFill
        slideshow.circular = true
        slideshow.zoomEnabled = true
        
        slideshow.currentPageChanged = { page in
            print("current page:", page)
            self.count = self.slideshow.currentPage
        }
         slideshow.setImageInputs(localSource)
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(didTap))
        slideshow.addGestureRecognizer(recognizer)
        
        
        
        
        
    }
    
    @objc func didTap() {
        print(count)
        
        
        
        _ = slideshow.presentFullScreenController(from: self)
        
        
    }
    
    
    

    

}
