//
//  PeopleViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/20/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit
import FoldingTabBar

class PeopleViewController: UIViewController, UICollectionViewDelegate ,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate, UIGestureRecognizerDelegate {
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var collectionView: UICollectionView!
    
    
    var isTeacher = true
    var isSearching = false
    var nameToSend = String()
    
   // @IBOutlet var gesture: UITapGestureRecognizer!
    var student = ["Anthony Smith","Brad Smith","Chuck Smith","Dean Smith","Eugene Smith","Falcon Smith","George Smith"]

    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.setStatusBarHidden(true, with: .none)
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.322, green: 0.373, blue: 0.216, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        
    
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.searchBar.delegate = self
//        self.gesture.delegate = self
//        
//        self.view.addGestureRecognizer(self.gesture)
        
        
        //self.hideKeyboardWhenTappedAround()
        
        reloadData()


        // Do any additional setup after loading the view.
    }
    
   
    override func viewDidAppear(_ animated: Bool) {
        
        UIApplication.shared.setStatusBarHidden(false, with: .none)
        self.collectionView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reloadData(){
        
        if(isTeacher){
            self.navigationController?.navigationBar.topItem?.title = "Teachers"
        }else{
            self.navigationController?.navigationBar.topItem?.title = "Students"
        }

        self.collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.size.width/3.5, height: collectionView.bounds.size.width/3.5)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let cInset = (collectionView.bounds.size.width - ((3*collectionView.bounds.size.width)/3.5))/6
        return UIEdgeInsets(top: 0.0, left: cInset, bottom: 15.0, right: cInset)
    }
    

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        if(isTeacher){
            return 50
        }else{
            return student.count
        }

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        if(isTeacher){
            
            
            let image = cell.viewWithTag(1) as! UIImageView
            image.layer.cornerRadius = 0.5 * image.bounds.size.width
            image.layer.masksToBounds = true
            image.image = UIImage(named: "profileex")!
            
            let name = cell.viewWithTag(2) as! UILabel
            name.adjustsFontSizeToFitWidth = true
            name.text = "Dr. Sheldon Cooper"
            
            
            // Configure the cell
            
            return cell

        }else{
            
            let image = cell.viewWithTag(1) as! UIImageView
            image.layer.cornerRadius = 0.5 * image.bounds.size.width
            image.layer.masksToBounds = true
            image.image = UIImage(named: "student")!
            
            let name = cell.viewWithTag(2) as! UILabel
            name.adjustsFontSizeToFitWidth = true
            name.text = student[indexPath.row]
            
            
            // Configure the cell
            
            return cell

        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(isTeacher){
            self.nameToSend = "Dr. Sheldon Cooper"
        }else{
            self.nameToSend = student[indexPath.row]
        }
        
        self.performSegue(withIdentifier: "cellInfo", sender: indexPath)
    }
    
    func tabBarDidSelectExtraLeftItem(_ tabBar: YALFoldingTabBar!){
        
        isTeacher = !isTeacher
        reloadData()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cellInfo" {
            let vc = segue.destination as! DoctorProfileViewController
            //let indexPath = self.tableView.indexPathForSelectedRow()
            vc.isTeacher = self.isTeacher
            vc.name = self.nameToSend
            
        }
    }
    
    //hide keyboard
    
    //click search
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        self.searchBar.showsCancelButton = false
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        isSearching = true
        self.searchBar.showsCancelButton = true
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar.resignFirstResponder()
        self.searchBar.text = ""
    }
    
    override func dismissKeyboard() {
        view.endEditing(true)
    }



}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
