//
//  MoviesDetailsViewController.swift
//  MoviesApp
//
//  Created by user230806 on 12/4/22.
//

import UIKit

class MoviesDetailsViewController: UIViewController {

    @IBOutlet weak var MovieNameTextField: UITextField!
    
    var movies: Movies!
    var moviesList: MoviesList!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if movies != nil{
            MovieNameTextField.text = movies.movieName
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if movies != nil{
            movies.movieName = MovieNameTextField.text ?? ""
        }else{
            if MovieNameTextField.text != ""{
                moviesList.createMovies(movieName: MovieNameTextField.text!)
            }
        }
       
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
