//
//  LogbookViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/21/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit
import FoldingTabBar
import MIBadgeButton_Swift

class LogbookViewController: UIViewController, UICollectionViewDelegate ,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.255, green: 0.310, blue: 0.157, alpha: 1.0)

        //self.collectionView!.backgroundView = UIImageView(image: UIImage(named: "background"))
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        self.collectionView.reloadData()
        UIApplication.shared.setStatusBarHidden(false, with: .none)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //collectionView
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 115, height: 115)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let cInset = (collectionView.bounds.size.width - (3*CGFloat(115)))/6
        return UIEdgeInsets(top: 0.0, left: cInset, bottom: 0.0, right: cInset)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! LogbookCollectionReusableView
        if((indexPath as NSIndexPath).section % 2 == 0){
            headerView.department.text = "RESPIRATORY DEPARTMENT"
        }else{
            headerView.department.text = "ORTHOPEDIC DEPARTMENT"
        }
        return headerView
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 6
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        let image = cell.viewWithTag(1) as! UILabel
        image.layer.cornerRadius = 0.5 * 0.6 * CGFloat(115)
        image.layer.masksToBounds = true
        image.text = "BP"
        
        //badge
        let badge = cell.viewWithTag(3) as! MIBadgeButton
        badge.badgeString = "3/15"
        badge.badgeEdgeInsets = UIEdgeInsetsMake(15, 0, 0, 15)
        badge.badgeTextColor = UIColor.white
        badge.badgeBackgroundColor = UIColor.red
        
        let name = cell.viewWithTag(2) as! UILabel
        name.adjustsFontSizeToFitWidth = true
        name.text = "Blood Pressure"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "logbookInfo", sender: indexPath)
    }
    
    func tabBarDidSelectExtraRightItem(_ tabBar: YALFoldingTabBar!){
        
        self.performSegue(withIdentifier: "logbookInfo", sender: AnyObject.self)
    }

}
