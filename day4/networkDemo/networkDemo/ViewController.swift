//
//  ViewController.swift
//  networkDemo
//
//  Created by JETS Mobile Lab-11 on 5/5/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var outLabel: UILabel!
    @IBAction func startTask(_ sender: Any) {
        let url = URL(string: "https://api.androidhive.info/json/movies.json")
        let req = URLRequest(url: url!)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        _ = session.dataTask(with: req) { (data, respons, error) in
            do{
                var out = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
//                print(out)
                var arr = out as! Array<Dictionary<String,Any>>
                //print(arr[0])
                print(arr[0]["title"]!)
                DispatchQueue.main.async {
                    self.outLabel.text = arr[14]["title"]! as? String 
                }
                           }
            catch{
                print("error")
            }
        }.resume()
    }
    
}

