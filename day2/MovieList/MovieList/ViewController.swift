//
//  ViewController.swift
//  MovieList
//
//  Created by JETS Mobile Lab-11 on 5/5/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var title_: UILabel!
    
    @IBOutlet weak var rank_: UILabel!
    
    @IBOutlet weak var genre_: UILabel!
    @IBOutlet weak var releaseYear_: UILabel!
    var currentMovie:Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView?.image =  UIImage(named: currentMovie?.image ?? "avatar.png")
        title_.text = currentMovie?.title
        rank_.text = "\(currentMovie?.rating)"
        genre_.text = "\(currentMovie?.genre)"
        releaseYear_.text = "\(currentMovie?.releaseYear)"
    }


}

