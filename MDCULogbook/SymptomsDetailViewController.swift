//
//  SymptomsDetailViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/27/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit

class SymptomsDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    @IBOutlet var closeButton: UIButton!
//    
//    @IBAction func closePage(_ sender: AnyObject) {
//        dismiss(animated: true, completion: nil)
//    }
    @IBOutlet var symptomsImage: UIImageView!
    @IBOutlet var symptomsName: UILabel!
    @IBOutlet var symptomsDetail: UITextView!

    @IBOutlet var HNTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        symptomsName.layer.cornerRadius = 50
        symptomsName.layer.masksToBounds = true
        
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        
//        closeButton.layer.masksToBounds = true
//        closeButton.layer.cornerRadius = 12.5
//        closeButton.setImage(UIImage(named:"close"), for: UIControlState())
//        view.addSubview(closeButton)
        //self.view.bringSubview(toFront: symptomsImage)
        
        HNTable.delegate = self
        HNTable.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
  
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hn", for: indexPath)
        
        cell.textLabel?.text = "Mr. Jackie Chan"
        cell.textLabel?.textColor = UIColor.white
        cell.detailTextLabel?.text = "HN 123456"
        cell.detailTextLabel?.textColor = UIColor.white
        
        return cell

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
