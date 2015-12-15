//
//  TrailMapViewController.swift
//  SkiApp
//
//  Created by JB on 12/14/15.
//  Copyright © 2015 Josh Burt. All rights reserved.
//

import UIKit

class TrailMapViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func mapButtonTapped(sender: UIBarButtonItem) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("TrailMapViewController") as UIViewController
        vc.modalPresentationStyle = UIModalPresentationStyle.Popover
        let popover : UIPopoverPresentationController = vc.popoverPresentationController!
        popover.barButtonItem = sender
        presentViewController(vc, animated: true, completion: nil)
    }

    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.FullScreen
    }

    func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
        let navigationController = UINavigationController(rootViewController: controller.presentedViewController)
        let buttonDone = UIBarButtonItem(title: "Done", style: .Done, target: self, action: "dismiss")
        return navigationController
    }

    func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
