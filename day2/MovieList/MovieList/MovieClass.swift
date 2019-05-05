//
//  MovieClass.swift
//  MovieList
//
//  Created by JETS Mobile Lab-11 on 5/5/19.
//  Copyright © 2019 Jets. All rights reserved.
//

import Foundation

class Movie {
    var title: String?
    var image: String?
    var rating: Float?
    var releaseYear: Int?
    var genre: [String]?
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
    init() {
        movies.append( Movie(Title: "title1", Image: "avatar.png", Rating: 5, ReleaseYear: 2, Genre: ["Action", "Drama", "Sci-Fi"]))
        movies.append( Movie(Title: "District 9", Image: "avatar.png", Rating: 5, ReleaseYear: 2, Genre: ["Action", "Drama", "Sci-Fi"]))
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
