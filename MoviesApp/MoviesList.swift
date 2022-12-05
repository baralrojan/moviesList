//
//  MoviesList.swift
//  MoviesApp
//
//  Created by user230806 on 12/4/22.
//

import Foundation

class MoviesList{
    var allMovies = [Movies]()
    
    init(){
        var movieNames = ["Eternals","Dune","No Time To Die","Last Night in Soho","Ron's Done Wrong","Halloween Kills","Venom","Antlers","The Addams Family 2"]
        
        for _ in  1...10{
            let movieNameIndex = Int.random(in: 0..<movieNames.count)
            
            allMovies.append(Movies(movieName: movieNames[movieNameIndex]))
        }
    }
}

