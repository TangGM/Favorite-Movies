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
    
    let KEY_MOVIES = "movies"
    
    private var _loadedMovies = [Movie]()
    var loadedMovies: [Movie] {
        return _loadedMovies
    }
    
    func saveMovies() {
        let movieData = NSKeyedArchiver.archivedDataWithRootObject(_loadedMovies)
        NSUserDefaults.standardUserDefaults().setObject(movieData, forKey: KEY_MOVIES)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    func loadMovies() {
        if let movieData = NSUserDefaults.standardUserDefaults().objectForKey(KEY_MOVIES) as? NSData {
            if let movieArray = NSKeyedUnarchiver.unarchiveObjectWithData(movieData) as? [Movie] {
                _loadedMovies = movieArray
            }
        }
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "movieLoaded", object: nil))
        
    }
    
    func saveImageAndCreatePath(image: UIImage) -> String {
        let imgData = UIImagePNGRepresentation(image)
        let imgPath = "image\(NSDate.timeIntervalSinceReferenceDate()).png"
        let fullPath = documentsPathForFileName(imgPath)
        imgData?.writeToFile(fullPath, atomically: true)
        return imgPath
    }
    
    func imageForPath(path: String) -> UIImage? {
        let imgPath = documentsPathForFileName(path)
        let image = UIImage(named: imgPath)
        return image
    }
    
    func addMovie(movie: Movie) {
        _loadedMovies.append(movie)
        saveMovies()
        loadMovies()
    }
    
    func documentsPathForFileName(name: String) -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let fullPath = paths[0] as NSString
        return fullPath.stringByAppendingPathComponent(name)
    }
    
    
}