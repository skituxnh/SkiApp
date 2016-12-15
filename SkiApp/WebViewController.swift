//
//  WebViewController.swift
//  SkiApp
//
//  Created by Joshua Burt on 12/14/16.
//  Copyright © 2016 Josh Burt. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadTrafficWebPage()
        
        webView.delegate = self
    }
    
    func loadTrafficWebPage() {
        let url = ROAD_CAM_URL
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

    
    // TODO: Create an Alert Controller
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        print("There was a problem loading the webpage!")
    }
}
