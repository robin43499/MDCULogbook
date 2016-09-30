//
//  ProfileViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/20/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate  {

    @IBOutlet var closeButton: UIButton!
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var email: UILabel!
    @IBOutlet var department: UITextField!
    @IBOutlet var status: UITextView!
    @IBOutlet var update: UIButton!
    
    @IBAction func closePage(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        closeButton.layer.cornerRadius = 0.5 * closeButton.bounds.size.width
        closeButton.setImage(UIImage(named:"close"), for: UIControlState())
        view.addSubview(closeButton)
        
        self.department.delegate = self
        self.status.delegate = self
        email.adjustsFontSizeToFitWidth = true
        status.layer.cornerRadius = 15
        status.layer.masksToBounds = true
        update.layer.cornerRadius = 15
        update.layer.masksToBounds = true
        
        update.isHidden = true
        



        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        update.isHidden = false
        return false
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange,replacementText text: String) -> Bool {
        if(text == "\n") {
            status.resignFirstResponder()
            update.isHidden = false
            return false
        }
        return true
    }
    override func viewWillAppear(_ animated: Bool) {
        
        profileImage.layer.cornerRadius = 0.5 * profileImage.bounds.size.width
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
