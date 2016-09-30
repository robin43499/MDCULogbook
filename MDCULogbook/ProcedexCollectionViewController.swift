//
//  ProcedexCollectionViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/20/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit
import MIBadgeButton_Swift



class ProcedexCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var back: UIBarButtonItem!
    @IBAction func closePage(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView!.backgroundView = UIImageView(image: UIImage(named: "background"))
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.322, green: 0.373, blue: 0.216, alpha: 1.0)
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]

        
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.collectionView?.reloadData()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.size.width/3.5, height: collectionView.bounds.size.width/3.5)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let cInset = (collectionView.bounds.size.width - ((3*collectionView.bounds.size.width)/3.5))/6
        return UIEdgeInsets(top: 0.0, left: cInset, bottom: 15.0, right: cInset)
    }
    
//    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! HeaderDepartmentCollectionReusableView
//        headerView.department.text = "ORTHOPEDIC DEPARTMENT"
//        
//        return headerView
//    }
   
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 30
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        let image = cell.viewWithTag(1) as! UILabel
        image.layer.cornerRadius = 0.5 * image.bounds.size.width
        image.layer.masksToBounds = true
        image.text = "BP"
        image.backgroundColor = getRandomColor()
        
        let badge = cell.viewWithTag(3) as! MIBadgeButton
        badge.badgeString = "3/15"
        badge.badgeEdgeInsets = UIEdgeInsetsMake(15, 0, 0, 15)
        badge.badgeTextColor = UIColor.white
        badge.badgeBackgroundColor = UIColor(red:0.910 ,green:0.318, blue:0.325, alpha:1.00)

        
        let name = cell.viewWithTag(2) as! UILabel
        name.adjustsFontSizeToFitWidth = true
        name.text = "Blood Pressure"
        
    
        // Configure the cell
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "cellInfo", sender: indexPath)
    }

    func getRandomColor() -> UIColor{
        
        var randomRed:CGFloat = CGFloat(drand48())
        
        var randomGreen:CGFloat = CGFloat(drand48())
        
        var randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }

    
    
    // MARK: UICollectionViewDelegate

    
//    // Uncomment this method to specify if the specified item should be highlighted during tracking
//    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
//        return true
//    }
//    
//
//    
//    // Uncomment this method to specify if the specified item should be selected
//    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
//        return true
//    }
//    
//
//    
//    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
//    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
//        return false
//    }
//
//    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
//        return true
//    }
//
//    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
//        
//    
//    }
    

}
