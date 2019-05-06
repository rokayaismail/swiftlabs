//
//  MovieClass.swift
//  MovieList
//
//  Created by JETS Mobile Lab-11 on 5/5/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import Foundation
import UIKit
class Movie {
    var title: String?
    var image: String?
    var rating: Float?
    var releaseYear: Int?
    var genre: [String]?
    var bitmap: UIImage?
    init(Title title:String, Image image:String, Rating rating:Float,ReleaseYear releaseYear:Int, Genre genre: [String]) {
        self.title=title
        self.image=image
        self.rating=rating
        self.releaseYear=releaseYear
        self.genre=genre
    }
}
class MovieManager {
    var movies = Array<Movie>()
    var tableVC : MoviesTableViewController?
    init() {
        let url = URL(string: "https://api.androidhive.info/json/movies.json")
        let req = URLRequest(url: url!)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        _ = session.dataTask(with: req) { (data, response, error) in
            do{
                let out = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                let jArray = out as! Array<Dictionary<String,Any>>
                for item in jArray{
                    var movie = Movie(Title: item["title"] as! String, Image: item["image"] as! String , Rating: (item["rating"] as! NSNumber).floatValue, ReleaseYear: (item["releaseYear"] as! NSNumber).intValue , Genre: item["genre"] as! [String])
                    self.movies.append(movie)
                    DispatchQueue.main.async {
                        self.tableVC!.tableView!.reloadData()
                    }
                    let imageUrl = URL(string: item["image"] as! String)
                    let imageSession = URLSession.shared.dataTask(with: imageUrl!, completionHandler: { (data, response, error) in
                        movie.bitmap = UIImage(data: data!)
                    }).resume()
                    DispatchQueue.main.async {
                        self.tableVC!.tableView!.reloadData()
                    }
                }
            }catch{
                print("Error")
            }
        }.resume()
//        movies.append( Movie(Title: "title1", Image: "avatar.png", Rating: 5, ReleaseYear: 2, Genre: ["Action", "Drama", "Sci-Fi"]))
//        movies.append( Movie(Title: "District 9", Image: "avatar.png", Rating: 5, ReleaseYear: 2, Genre: ["Action", "Drama", "Sci-Fi"]))
    }
    //computed probarity
    var moviesCount: Int {
        get{
            return movies.count
        }
    }
    func addMovie
        (movie :Movie){
        movies.append(movie)
    }
    subscript(index	 : Int) -> Movie{
        get{
            return movies[index]
        }
    }
}
