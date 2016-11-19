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

//Hiddens Status Bar
//        navigationController?.navigationItem.leftBarButtonItem!.title = ""
//        navigationController?.navigationBarHidden = true


//Setting Image for View Adjustments
        imageView = UIImageView(image: UIImage(named: "SnowbirdTrailMap.png"))

//Scrolling Properties
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        scrollView.contentSize = imageView.bounds.size
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)

    }

    override func viewDidDisappear(_ animated: Bool) {

    }
}
