//
//  TableViewController.swift
//  Contact App
//
//  Created by TRAINING on 29/12/21.
//  Copyright © 2021 vjec. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var ctArray : [Contact] = [Contact]()

    override func viewDidLoad() {
        super.viewDidLoad()
  

    }
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
        return ctArray.count + 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        if indexPath.row == 0{
            cell.lblName?.text = "Title"
            cell.lblNum?.text = "Details"
            cell.lblName.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
            cell.lblNum.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        }else{
            let contacts = ctArray[indexPath.row - 1]
           print(indexPath)
            //print(indexPath.row)
            cell.lblName?.text = contacts.name
            cell.lblNum?.text = contacts.num
            cell.lblName.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            cell.lblNum.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        }
        return cell
    }
    

}
