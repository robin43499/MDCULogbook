//
//  LogbookDetailViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/21/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit

class LogbookDetailViewController: UIViewController {

    @IBOutlet var closeButton: UIButton!

    
    @IBAction func closePage(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBOutlet var logbookImage: UIImageView!
    @IBOutlet var comment: UITextView!
    @IBOutlet var submit: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        UIApplication.sharedApplication().setStatusBarHidden(false, withAnimation: .None)
        
        
        closeButton.layer.cornerRadius = 0.5 * closeButton.bounds.size.width
        closeButton.setImage(UIImage(named:"close"), forState: .Normal)
        view.addSubview(closeButton)
        
        comment.layer.cornerRadius = 15
        comment.layer.masksToBounds = true
        
        submit.layer.cornerRadius = 18
        submit.layer.masksToBounds = true


        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        logbookImage.layer.cornerRadius = 0.5 * logbookImage.bounds.size.width
        logbookImage.layer.masksToBounds = true
 
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
