//
//  LogbookDetailViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/21/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit
import TagListView

class LogbookDetailViewController: UIViewController, TagListViewDelegate, UITextFieldDelegate {

    //close button
    @IBOutlet var closeButton: UIButton!
    @IBAction func closePage(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var diagnosisTagListView: TagListView!
    @IBOutlet var symptomsTagListView: TagListView!
    @IBOutlet var diagnosisTextField: UITextField!
    @IBOutlet var symptomsTextField: UITextField!
   
   


    @IBOutlet var submit: UIButton!
    @IBOutlet var addNext: UIButton!
    @IBOutlet var InfoView: UIView!
    
    //button
    @IBOutlet var viewButton: UIView!
    @IBOutlet var ipdButton: UIButton!
    @IBOutlet var opdButton: UIButton!
    @IBOutlet var wpButton: UIButton!
    @IBOutlet var simButton: UIButton!
    var listButton = [UIButton]()
    var selectButton = 4
    
    @IBOutlet var multimediaView: UIView!
    
    
    @IBAction func ipdClick(_ sender: AnyObject) {
        if(selectButton != 4){
            listButton[selectButton].backgroundColor = UIColor.white
            listButton[selectButton].setTitleColor(UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0), for: UIControlState.normal)
        }
        selectButton = 0
        ipdButton.backgroundColor = UIColor(red: 0.255, green: 0.584, blue: 0.659, alpha: 1.0)
        ipdButton.setTitleColor(UIColor.white, for: UIControlState.normal)
    }
    @IBAction func opdClick(_ sender: AnyObject) {
        if(selectButton != 4){
            listButton[selectButton].backgroundColor = UIColor.white
            listButton[selectButton].setTitleColor(UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0), for: UIControlState.normal)
        }
        selectButton = 1
        opdButton.backgroundColor = UIColor(red: 0.255, green: 0.584, blue: 0.659, alpha: 1.0)
        opdButton.setTitleColor(UIColor.white, for: UIControlState.normal)
    }
    @IBAction func wpClick(_ sender: AnyObject) {
        if(selectButton != 4){
            listButton[selectButton].backgroundColor = UIColor.white
            listButton[selectButton].setTitleColor(UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0), for: UIControlState.normal)
        }
        selectButton = 2
        wpButton.backgroundColor = UIColor(red: 0.255, green: 0.584, blue: 0.659, alpha: 1.0)
        wpButton.setTitleColor(UIColor.white, for: UIControlState.normal)
    }
    @IBAction func simClick(_ sender: AnyObject) {
        if(selectButton != 4){
            listButton[selectButton].backgroundColor = UIColor.white
            listButton[selectButton].setTitleColor(UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0), for: UIControlState.normal)
        }
        selectButton = 3
        simButton.backgroundColor = UIColor(red: 0.255, green: 0.584, blue: 0.659, alpha: 1.0)
        simButton.setTitleColor(UIColor.white, for: UIControlState.normal)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        UIApplication.shared.setStatusBarHidden(false, with: .none)
        
        diagnosisTagListView.delegate = self
        symptomsTagListView.delegate = self
        diagnosisTextField.delegate = self
        symptomsTextField.delegate = self
        
        
        closeButton.layer.cornerRadius = CGFloat(12)
        closeButton.setImage(UIImage(named:"close"), for: UIControlState())
        view.addSubview(closeButton)
        

        InfoView.layer.cornerRadius = 18
        InfoView.layer.masksToBounds = true
        viewButton.layer.cornerRadius = 3
        viewButton.layer.masksToBounds = true
        multimediaView.layer.cornerRadius = 3
        multimediaView.layer.masksToBounds = true
        multimediaView.layer.borderColor = UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0).cgColor
        multimediaView.layer.borderWidth = 0.5

        
        //button
        listButton = [ipdButton,opdButton,wpButton,simButton]
        viewButton.layer.borderWidth = 0.5
        viewButton.layer.borderColor = UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0).cgColor
        ipdButton.layer.borderWidth = 0.5
        ipdButton.setTitleColor(UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0), for: UIControlState.normal)
        ipdButton.layer.borderColor = UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0).cgColor
        opdButton.layer.borderWidth = 0.5
        opdButton.setTitleColor(UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0), for: UIControlState.normal)
        opdButton.layer.borderColor = UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0).cgColor
        wpButton.layer.borderWidth = 0.5
        wpButton.setTitleColor(UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0), for: UIControlState.normal)
        wpButton.layer.borderColor = UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0).cgColor
        simButton.layer.borderWidth = 0.5
        simButton.setTitleColor(UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0), for: UIControlState.normal)
        simButton.layer.borderColor = UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0).cgColor
        
        self.hideKeyboardWhenTappedAround()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if(diagnosisTextField.text != ""){
            diagnosisTagListView.addTag(diagnosisTextField.text!)
        }
        
        if(symptomsTextField.text != ""){
            symptomsTagListView.addTag(symptomsTextField.text!)
        }
        
        
        
        diagnosisTextField.text = ""
        symptomsTextField.text = ""
        
        self.view.endEditing(true)
        return false
    }
    
    
    func tagRemoveButtonPressed(_ title: String, tagView: TagView, sender: TagListView) {
        
        sender.removeTagView(tagView)
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
