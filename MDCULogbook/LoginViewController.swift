//
//  LoginViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 10/5/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit
import FoldingTabBar

class LoginViewController: UIViewController {

    @IBAction func student(_ sender: AnyObject) {
        
        let appDelegate = UIApplication.shared.delegate! as! AppDelegate
        
        let stb = UIStoryboard(name: "NewMain", bundle: nil)

        let initialViewController = stb.instantiateViewController(withIdentifier: "stuMain") as? YALFoldingTabBarController

        appDelegate.window?.rootViewController = initialViewController
        appDelegate.yalTabBar()
        //appDelegate.window?.makeKeyAndVisible()
        //self.performSegue(withIdentifier: "student", sender: nil)
    }
    @IBAction func teacher(_ sender: AnyObject) {
        
        let appDelegate = UIApplication.shared.delegate! as! AppDelegate

        appDelegate.window?.rootViewController = appDelegate.teaTabBarController
        //appDelegate.window?.makeKeyAndVisible()
        //self.performSegue(withIdentifier: "teacher", sender: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
