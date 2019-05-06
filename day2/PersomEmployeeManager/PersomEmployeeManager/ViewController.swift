//
//  ViewController.swift
//  PersomEmployeeManager
//
//  Created by JETS Mobile Lab-11 on 5/5/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var salaryInp: UITextField!
    @IBOutlet weak var salaryOut: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func employeeSal(_ sender: Any) {
        var emp = Employee();
        salaryOut.text = "\(emp.calcSalery(Double(salaryInp.text!)!))"
        
    }
    
    @IBAction func mgSal(_ sender: Any) {
        var mgr = Manager();
        salaryOut.text = "\(mgr.calcSalery(Double(salaryInp.text!)!))"
    }
}

