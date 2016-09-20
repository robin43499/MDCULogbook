//
//  HomeViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/19/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit
import FoldingTabBar

class HomeViewController: UIViewController, YALTabBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tabBarDidSelectExtraLeftItem(tabBar: YALFoldingTabBar!){
        self.performSegueWithIdentifier("profile", sender: self)
    }
    func tabBarDidSelectExtraRightItem(tabBar: YALFoldingTabBar!){
        self.performSegueWithIdentifier("procedex", sender: self)
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
