//
//  DoctorRequestViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/21/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit

class DoctorRequestViewController: UIViewController {

    //close button
    @IBOutlet var closeButton: UIButton!
    @IBAction func closePage(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func submitButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var profileView: UIView!
    @IBOutlet var submit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        //close button
        closeButton.layer.cornerRadius = 12
        closeButton.setImage(UIImage(named:"close"), for: UIControlState())
        view.addSubview(closeButton)
        
        //profile image
        profileImage.image = UIImage(named: "profileex")!
        profileView.layer.cornerRadius = 20
        profileView.layer.masksToBounds = true
        
        //submit button
        submit.layer.cornerRadius = 18
        submit.layer.masksToBounds = true
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        profileImage.layer.cornerRadius = 50
        profileImage.layer.masksToBounds = true
        self.view.bringSubview(toFront: profileImage)
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
