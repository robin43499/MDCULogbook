//
//  ProcedexViewController.swift
//  MDCULogbook
//
//  Created by Peeranut Mahatham on 9/20/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit
import TagListView

class ProcedexViewController: UIViewController {

    @IBOutlet var procedureTagViewList: TagListView!
    @IBOutlet var diagnosisTagViewList: TagListView!
    @IBOutlet var symptomsTagViewList: TagListView!
    
    //button
    @IBOutlet var viewButton: UIView!
    @IBOutlet var ipdButton: UIButton!
    @IBOutlet var opdButton: UIButton!
    @IBOutlet var wpButton: UIButton!
    @IBOutlet var simButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        self.title = "HN123456"
        
        
        //button
        viewButton.layer.borderWidth = 0.5
        viewButton.layer.cornerRadius = 3
        viewButton.layer.masksToBounds = true
        viewButton.layer.borderColor = UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0).cgColor
        ipdButton.layer.borderWidth = 0.5
        //ipdButton.setTitleColor(UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0), for: UIControlState.normal)
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
        
        procedureTagViewList.addTag("Blood Pressure")
        diagnosisTagViewList.addTag("High Pressure")
        diagnosisTagViewList.addTag("Low Blood")
        symptomsTagViewList.addTag("หน้ามืด")
        symptomsTagViewList.addTag("มีไข้")
        symptomsTagViewList.addTag("เป็นลม")

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
