//
//  LogbookViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/21/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit

class LogbookViewController: UIViewController, UICollectionViewDelegate ,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().setStatusBarHidden(true, withAnimation: .None)
        
        self.collectionView!.backgroundView = UIImageView(image: UIImage(named: "background"))
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        
        
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        self.collectionView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake(collectionView.bounds.size.width/3.5, collectionView.bounds.size.width/3.5)
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        let cInset = (collectionView.bounds.size.width - ((3*collectionView.bounds.size.width)/3.5))/6
        return UIEdgeInsets(top: 0.0, left: cInset, bottom: 15.0, right: cInset)
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "header", forIndexPath: indexPath) as! LogbookCollectionReusableView
        if(indexPath.section % 2 == 0){
            headerView.department.text = "RESPIRATORY DEPARTMENT"
        }else{
            headerView.department.text = "ORTHOPEDIC DEPARTMENT"
        }
        return headerView
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 6
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
        
        let image = cell.viewWithTag(1) as! UIImageView
        image.layer.cornerRadius = 0.5 * image.bounds.size.width
        image.layer.masksToBounds = true
        image.image = UIImage(named: "procedexex")!
        
        let name = cell.viewWithTag(2) as! UILabel
        name.adjustsFontSizeToFitWidth = true
        name.text = "Blood Pressure"
        
        
        // Configure the cell
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("cellInfo", sender: indexPath)
    }
}
