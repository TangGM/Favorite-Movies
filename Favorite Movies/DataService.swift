//
//  DataService.swift
//  Favorite Movies
//
//  Created by Tang on 2016/5/23.
//  Copyright © 2016年 Tang. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    static let instance = DataService()
    
    private var _loadedMovies = [Movie]()
    var loadedMovies: [Movie] {
        return _loadedMovies
    }
    
    func saveMovies() {
        
    }
    
    func loadMovies() {
        
    }
    
    func saveImageAndCreatePath(image: UIImage) -> String {
        
    }
    
    func imageForPath(path: String) -> UIImage? {
        
    }
    
    func addMovie(movie: Movie) {
        
    }
    
    func documentsPathForFileName(name: String) -> String {
        
    }
    
    
}