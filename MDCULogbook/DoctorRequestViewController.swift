//
//  DoctorRequestViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/21/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit

class DoctorRequestViewController: UIViewController {

    @IBOutlet var closeButton: UIButton!
    
    @IBAction func closePage(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func submitButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var profileView: UIView!
    
    @IBOutlet var request: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        closeButton.layer.cornerRadius = 0.5 * closeButton.bounds.size.width
        closeButton.setImage(UIImage(named:"close"), forState: .Normal)
        view.addSubview(closeButton)
        profileImage.image = UIImage(named: "profileex")!
        
        profileView.layer.cornerRadius = 20
        profileView.layer.masksToBounds = true
        

        request.layer.cornerRadius = 18
        request.layer.masksToBounds = true
        
        // Do any additional setup after loading the view.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
