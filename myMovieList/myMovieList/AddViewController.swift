//
//  AddViewController.swift
//  myMovieList
//
//  Created by Esraa Hassan on 5/6/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    var prevView: DelegateProtocole?
    
    @IBOutlet weak var mName: UITextField!
    
    @IBOutlet weak var mRank: UITextField!
    
    @IBOutlet weak var mYear: UITextField!
    
    @IBOutlet weak var mGenre: UITextField!
    
    @IBOutlet weak var mImage: UITextField!
    
    @IBAction func addBtn(_ sender: Any) {
        prevView?.addMovie(Movie(Title: mName.text!, Image: "avatar.png", Rating: Float(mRank.text!)!, ReleaseYear: Int(mYear.text!)!, Genre: ["Action", "Drama", "Sci-Fi"]))
        self.navigationController?.popViewController(animated: true)
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
