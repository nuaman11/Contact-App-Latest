//
//  ViewController.swift
//  Contact App
//
//  Created by TRAINING on 29/12/21.
//  Copyright © 2021 vjec. All rights reserved.
//



struct  Contact {
    var name : String
    var num : String
}

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtNum: UITextField!
    
    var contactArray : [Contact] = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClear(_ sender: UIButton) {
        
        txtNum.text = ""
        txtName.text = ""
    }
    
    @IBAction func btnSave(_ sender: UIButton) {
        
        contactArray.append(Contact(name: txtName.text!, num: txtNum.text!))
        
        for i in 0...contactArray.count-1{
            print(contactArray[i].name)
            print(contactArray[i].num)
        }
        
        txtName.text = ""
        txtNum.text = ""
    }
    
    @IBAction func btnView(_ sender: UIButton) {
        
        let viewcontroller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        viewcontroller.ctArray = contactArray
        navigationController?.pushViewController(viewcontroller, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let obj = segue.destination as! TableViewController
        obj.ctArray = contactArray
    }
    
}

