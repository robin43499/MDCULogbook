//
//  ChatViewController.swift
//  MDCULogbook
//
//  Created by Tanakorn on 9/30/2559 BE.
//  Copyright © 2559 Peeranut Mahatham. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let img = cell.viewWithTag(1) as! UIImageView
        img.layer.cornerRadius = 20
        img.layer.masksToBounds = true
        let message = cell.viewWithTag(2) as! UITextView
        message.layer.cornerRadius = 5
        message.layer.masksToBounds = true
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
