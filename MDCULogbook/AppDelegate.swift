//
//  AppDelegate.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/15/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit
import FoldingTabBar

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var teaTabBarController: UITabBarController?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        UINavigationBar.appearance().tintColor = UIColor(red: 0.322, green: 0.376, blue: 0.208, alpha: 1.0)
        
        //teacherTabBar
        let stb = UIStoryboard(name: "Notification", bundle: nil)
        let noti = stb.instantiateViewController(withIdentifier: "teaNoti")
        noti.tabBarItem = UITabBarItem(title: "Notification", image: UIImage(named: "teaNoti"), selectedImage: UIImage(named: "teaNoti"))
        
        noti.tabBarItem.badgeValue = "18"
        

        
        let stb2 = UIStoryboard(name: "ClinicalNote", bundle: nil)
        let clinicalNote = stb2.instantiateViewController(withIdentifier: "clinicalNote") as? ClinicalNoteTableViewController
        clinicalNote?.tabBarItem = UITabBarItem(title: "Clinical Note", image: UIImage(named: "teaClinicalNote"), selectedImage: UIImage(named: "teaClinicalNote"))
        
        let stb3 = UIStoryboard(name: "Search", bundle: nil)
        let search = stb3.instantiateViewController(withIdentifier: "Search")
        search.tabBarItem = UITabBarItem(title: "Search", image: UIImage(named: "teaSearch"), selectedImage: UIImage(named: "teaSearch"))
        
        let stb4 = UIStoryboard(name: "Setting", bundle: nil)
        let teaSetting = stb4.instantiateViewController(withIdentifier: "setting")
        teaSetting.tabBarItem = UITabBarItem(title: "Setting", image: UIImage(named: "teaSetting"), selectedImage: UIImage(named: "teaSetting"))
        
        self.teaTabBarController = UITabBarController()
        self.teaTabBarController!.setViewControllers([noti, clinicalNote!,search,teaSetting], animated: false);
        
        
        
        return true
    }
    
    func yalTabBar(){
        if let tabBarController = window?.rootViewController as? YALFoldingTabBarController {
            
            //leftBarItems
            
            let firstItem = YALTabBarItem(
                itemImage: UIImage(named: "home")!,
                leftItemImage: nil,
                rightItemImage: nil
            )
            
            let secondItem = YALTabBarItem(
                itemImage: UIImage(named: "people")!,
                leftItemImage: UIImage(named: "swap")!,
                rightItemImage: nil
            )
            
            tabBarController.leftBarItems = [firstItem, secondItem]
            
            //rightBarItems
            
            let thirdItem = YALTabBarItem(
                itemImage: UIImage(named: "note")!,
                leftItemImage: nil,
                rightItemImage: UIImage(named: "newnote")!
            )
            
            let forthItem = YALTabBarItem(
                itemImage: UIImage(named: "logbook")!,
                leftItemImage: nil,
                rightItemImage: UIImage(named: "newnote")!
            )
            
            tabBarController.rightBarItems = [thirdItem, forthItem]
            
            tabBarController.centerButtonImage = UIImage(named:"plus")!
            
            tabBarController.tabBarViewHeight = YALTabBarViewDefaultHeight
            tabBarController.tabBarView.tabBarViewEdgeInsets = YALTabBarViewHDefaultEdgeInsets
            tabBarController.tabBarView.tabBarItemsEdgeInsets = YALTabBarViewItemsDefaultEdgeInsets
            tabBarController.tabBarView.offsetForExtraTabBarItems = YALForExtraTabBarItemsDefaultOffset
            tabBarController.tabBarView.extraTabBarItemHeight = YALExtraTabBarItemsDefaultHeight
            tabBarController.tabBarView.backgroundColor = UIColor.clear
            tabBarController.tabBarView.tabBarColor = UIColor(red:0.322, green:0.376, blue:0.208, alpha:1.00)
            tabBarController.tabBarView.dotColor = UIColor.white
            
            
        }

    }
    
    func drawImageView(_ mainImage: UIImage, withBadge badge: UIImage) -> UIImage
    {
        UIGraphicsBeginImageContextWithOptions(mainImage.size, false, 0.0)
        mainImage.draw(in: CGRect(x: 0, y: 0, width: mainImage.size.width, height: mainImage.size.height))
        badge.draw(in: CGRect(x: mainImage.size.width - badge.size.width, y: 0, width: badge.size.width, height: badge.size.height))
        
        let resultImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return resultImage
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

