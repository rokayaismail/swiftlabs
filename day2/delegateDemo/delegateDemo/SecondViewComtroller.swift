//
//  SecondViewComtroller.swift
//  delegateDemo
//
//  Created by JETS Mobile Lab-11 on 5/5/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import UIKit

class SecondViewComtroller: UIViewController {

    @IBOutlet weak var outLabel: UILabel!
    var str: String?
    var firstVC : ClearProtocol?
    
    @IBAction func clearBtn(_ sender: UIBarButtonItem) {
        firstVC?.clear();
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        outLabel.text = str;
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
