//
//  WelcomeViewController.swift
//  Assignement_2
//
//  Created by Kaycee Collins on 9/23/15.
//  Copyright (c) 2015 ___kayceeAcollins___. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
   
    //OUTLETS
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var takeCarousel: UIView!
    @IBOutlet weak var takeCarouselButton: UIButton!
    
    //VIEW DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()

        //SCROLLVIEW DELEGATE
        scrollView.delegate = self
        
        //SETS SCROLLVIEW CONSTRAINTS AND YOU MUST CLICK THE SCROLLVIEW AND SET VIEW SIZE TO 320/568
        scrollView.contentSize = CGSize(width:1280, height:568)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UI PAGE CONTROL DOTS
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        //TAKE CAROUSEL FOR A SPIN
        if page == 3
        {
            takeCarousel.alpha = 1
        }
        
        else{
        takeCarousel.alpha = 0
        }
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
