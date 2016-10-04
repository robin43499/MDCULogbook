//
//  DoctorProfileViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/21/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit


class DoctorProfileViewController: UIViewController {

    //closebutton
    @IBOutlet var closeButton: UIButton!
    @IBAction func closePage(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var profileView: UIView!
    @IBOutlet var profileName: UILabel!
    @IBOutlet var request: UIButton!
    @IBOutlet var status: UITextView!
    
    var isTeacher = Bool()
    var name = String()
    
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
        
        //status bar
        status.layer.cornerRadius = 10
        status.layer.masksToBounds = true
        status.layer.borderColor = UIColor.lightGray.cgColor
        status.layer.borderWidth = 1
        
        //hide request button if they are student
        if(isTeacher){
            profileImage.image = UIImage(named: "profileex")!
            request.layer.cornerRadius = 18
            request.layer.masksToBounds = true
        }else{
            profileImage.image = UIImage(named: "student")!
            request.isHidden = true
            status.text = "Hello, I'm a student."
        }
        self.profileName.text = name
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
