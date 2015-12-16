//
//  TrailMapViewController.swift
//  SkiApp
//
//  Created by JB on 12/15/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

class TrailMapViewController: UIViewController, UIScrollViewDelegate {

    var scrollView: UIScrollView!
    var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
//Setting Image for View Adjustments
        imageView = UIImageView(image: UIImage(named: "SnowbirdTrailMap.png"))
//Scrolling Properties
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.blackColor()
        scrollView.contentSize = imageView.bounds.size
        scrollView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
//Zooming Properties
//        scrollView.delegate = self
//Replaced by func setZoomScale()
//        scrollView.minimumZoomScale = 0.5
//        scrollView.maximumZoomScale = 2.0
//        scrollView.zoomScale = 1.0
//        setZoomScale()
   }
//    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
//        return imageView
//    }
//    func setZoomScale() {
//        let imageViewSize = imageView.bounds.size
//        let scrollViewSize = scrollView.bounds.size
//        let widthScale = scrollViewSize.width / imageViewSize.width
//        let heightScale = scrollViewSize.height / imageViewSize.height
//
//        scrollView.minimumZoomScale = min(widthScale, heightScale)
//        scrollView.zoomScale = 2.0
//    }
}
