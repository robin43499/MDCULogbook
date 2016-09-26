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
    
    //@IBOutlet var setting: UIButton!

    @IBOutlet var profileImage: UIButton!
    
    @IBOutlet var statusTextView: UITextView!
 
    @IBOutlet var wardProgressView: UIView!
    @IBOutlet var symptomProgressView: UIView!
    @IBOutlet var saveButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().setStatusBarHidden(false, withAnimation: .None)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        

        statusTextView.layer.cornerRadius = 10
        statusTextView.layer.masksToBounds = true
        wardProgressView.layer.cornerRadius = 10
        wardProgressView.layer.masksToBounds = true
        symptomProgressView.layer.cornerRadius = 10
        symptomProgressView.layer.masksToBounds = true
        saveButton.layer.cornerRadius = 10
        saveButton.layer.masksToBounds = true

        
//        setting.layer.cornerRadius = 0.5 * setting.bounds.size.width
//        setting.setImage(UIImage(named:"setting"), forState: .Normal)
//        view.addSubview(setting)
        
    
        


        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        profileImage.layer.cornerRadius = 0.5 * profileImage.bounds.size.width
        profileImage.layer.masksToBounds = true
        self.view.bringSubviewToFront(profileImage)
        
        
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tabBarDidSelectExtraLeftItem(tabBar: YALFoldingTabBar!){
        self.performSegueWithIdentifier("profile", sender: self)
    }
//    func tabBarDidSelectExtraRightItem(tabBar: YALFoldingTabBar!){
//        self.performSegueWithIdentifier("procedex", sender: self)
//    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
