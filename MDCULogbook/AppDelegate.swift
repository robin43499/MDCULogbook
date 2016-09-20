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


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        
        //UITabBar.appearance().tintColor = UIColor(red: 0.322, green: 0.376, blue: 0.208, alpha: 1.0)
        
        if let tabBarController = window?.rootViewController as? YALFoldingTabBarController {
            
            //leftBarItems
            
            let firstItem = YALTabBarItem(
                itemImage: UIImage(named: "home")!,
                leftItemImage: UIImage(named: "profile")!,
                rightItemImage: UIImage(named: "procedex")!
            )
            
            let secondItem = YALTabBarItem(
                itemImage: UIImage(named: "people")!,
                leftItemImage: nil,
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
            
            tabBarController.centerButtonImage = UIImage(named:"plus")
            
            tabBarController.tabBarViewHeight = YALTabBarViewDefaultHeight
            tabBarController.tabBarView.tabBarViewEdgeInsets = YALTabBarViewHDefaultEdgeInsets
            tabBarController.tabBarView.tabBarItemsEdgeInsets = YALTabBarViewItemsDefaultEdgeInsets
            tabBarController.tabBarView.offsetForExtraTabBarItems = YALForExtraTabBarItemsDefaultOffset
            tabBarController.tabBarView.extraTabBarItemHeight = YALExtraTabBarItemsDefaultHeight
            tabBarController.tabBarView.backgroundColor = UIColor.clearColor()
            tabBarController.tabBarView.tabBarColor = UIColor(red:0.322, green:0.376, blue:0.208, alpha:1.00)
            tabBarController.tabBarView.dotColor = UIColor.whiteColor()
            
            

        }
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

