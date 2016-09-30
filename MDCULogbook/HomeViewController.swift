//
//  HomeViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/19/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit
import FoldingTabBar
import MBCircularProgressBar

class HomeViewController: UIViewController, YALTabBarDelegate {
    
    //@IBOutlet var setting: UIButton!

    @IBOutlet var profileImage: UIButton!
    
    @IBOutlet var statusTextView: UITextView!
 
    @IBOutlet var wardProgressView: UIView!
    @IBOutlet var symptomProgressView: UIView!
    @IBOutlet var evaluatableLabel: UILabel!
    
    
    @IBOutlet var saveButton: UIButton!

    
    @IBOutlet var wardProgress: MBCircularProgressBarView!
    @IBOutlet var symptomsProgress: MBCircularProgressBarView!
    
    //levelbar
    @IBOutlet var levelBar: UIProgressView!
    var currentEXP = 1000
    var maxEXP = 1900
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        

        statusTextView.layer.cornerRadius = 10
        statusTextView.layer.masksToBounds = true
        wardProgressView.layer.cornerRadius = 10
        wardProgressView.layer.masksToBounds = true
        symptomProgressView.layer.cornerRadius = 10
        symptomProgressView.layer.masksToBounds = true
        saveButton.layer.cornerRadius = 10
        saveButton.layer.masksToBounds = true
        
        wardProgress.value = 0
        wardProgress.maxValue = 113
        wardProgress.unitString = "/113"
        symptomsProgress.value = 0
        symptomsProgress.maxValue = 300
        symptomsProgress.unitString = "/300"
        evaluatableLabel.adjustsFontSizeToFitWidth = true
        
        statusTextView.layer.borderWidth = 1
        statusTextView.layer.borderColor = UIColor.gray.cgColor
        //Don't Forget
        saveButton.isHidden = true
        
        
        
        //levelbar
        let fractionalProgress = Float(currentEXP) / Float(maxEXP)
        levelBar.setProgress(fractionalProgress, animated: true)

        levelBar.transform  = CGAffineTransform(scaleX: 1, y: 2.5)
        
    
        


        
    }
    

    
    override func viewDidAppear(_ animated: Bool) {
        wardProgress.setValue(CGFloat(69), animateWithDuration: 1)
        symptomsProgress.setValue(CGFloat(100), animateWithDuration: 1)
        UIApplication.shared.setStatusBarHidden(false, with: .none)

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        wardProgress.value = 0
        symptomsProgress.value = 0

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        profileImage.layer.cornerRadius = 0.5 * profileImage.bounds.size.width
        profileImage.layer.masksToBounds = true
        self.view.bringSubview(toFront: profileImage)
        
        self.view.reloadInputViews()
        
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let backItem = UIBarButtonItem()
        backItem.title = "Something Else"
        navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
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
