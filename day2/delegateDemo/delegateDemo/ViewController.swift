//
//  ViewController.swift
//  delegateDemo
//
//  Created by JETS Mobile Lab-11 on 5/5/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import UIKit
class ViewController: UIViewController ,ClearProtocol{

    @IBOutlet weak var inputTF: UITextField!
    @IBAction func goBtn(_ sender: UIButton) {
        self.storyboard 
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewComtroller;
        secondVC.str = inputTF.text;
        secondVC.firstVC = self;
    }
    func clear() {
        inputTF.text="";
    }
}

