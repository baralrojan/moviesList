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
        let movieNames = ["Eternals","Dune","No Time To Die","Last Night in Soho","Ron's Done Wrong","Halloween Kills","Venom","Antlers","The Addams Family 2"]
        let names_with_index = movieNames.enumerated()
        for (index, name) in names_with_index {
            allMovies.append(Movies(movieName: movieNames[index]))
        }
   
    }
    func deleteMovies(index: Int){
        allMovies.remove(at: index)
    }
    func moveMovies(from fromIndex: Int, to toIndex: Int){
        let temp = allMovies[fromIndex]
        allMovies.remove(at: fromIndex)
        allMovies.insert(temp, at: toIndex)
    }
    @discardableResult func createMovies(movieName: String) -> Movies{
        let movies = Movies(movieName: movieName)
        allMovies.append(movies)
        return movies
    }
}

