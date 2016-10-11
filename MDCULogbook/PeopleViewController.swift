//
//  PeopleViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/20/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit
import FoldingTabBar

class PeopleViewController: UIViewController, UITableViewDelegate,UITableViewDataSource, UISearchBarDelegate, UIGestureRecognizerDelegate {
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var table: UITableView!
    
    var isTeacher = true
    var isSearching = false
    var nameToSend = String()
    
    var student = ["Anthony Smith","Brad Smith","Chuck Smith","Dean Smith","Eugene Smith","Falcon Smith","George Smith"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.setStatusBarHidden(true, with: .none)
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.322, green: 0.373, blue: 0.216, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        self.table.delegate = self
        self.table.dataSource = self
        self.searchBar.delegate = self
        

        reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
    }
    
   
    override func viewDidAppear(_ animated: Bool) {
        
        UIApplication.shared.setStatusBarHidden(false, with: .none)
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
        self.table.reloadData()

        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 75
//    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(isTeacher){
            return 14
        }else{
            return student.count
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if(isTeacher){
            let image = cell.viewWithTag(1) as! UIImageView
            image.layer.cornerRadius = 0.5 * 0.9 * CGFloat(80)
            image.layer.masksToBounds = true
            image.image = UIImage(named: "profileex")!
            
            let name = cell.viewWithTag(2) as! UILabel
            name.adjustsFontSizeToFitWidth = true
            name.text = "Dr. Sheldon Cooper"
            
            let dept = cell.viewWithTag(3) as! UILabel
            dept.adjustsFontSizeToFitWidth = true
            dept.text = "Orthopredict"

        }else{
            let image = cell.viewWithTag(1) as! UIImageView
            image.layer.cornerRadius = 0.5 * 0.9 * CGFloat(80)
            image.layer.masksToBounds = true
            image.image = UIImage(named: "student")!
            
            let name = cell.viewWithTag(2) as! UILabel
            name.adjustsFontSizeToFitWidth = true
            name.text = student[indexPath.row]
            
            let dept = cell.viewWithTag(3) as! UILabel
            dept.adjustsFontSizeToFitWidth = true
            dept.text = "Orthopredict"

        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
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
