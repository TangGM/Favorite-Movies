//
//  Movie.swift
//  Favorite Movies
//
//  Created by Tang on 2016/5/23.
//  Copyright © 2016年 Tang. All rights reserved.
//

import Foundation


class Movie: NSObject, NSCoding {
    
    private var _title: String!
    private var _desc: String!
    private var _imagePath: String!
    private var _movieUrl: String!
    
    var title: String {
        return _title
    }
    var desc: String {
        return _desc
    }
    var imagePath: String {
        return _imagePath
    }
    var movieUrl: String {
        return _movieUrl
    }
    
    init(title: String, desc: String, imagePath: String, url: String) {
        self._title = title
        self._desc = desc
        self._imagePath = imagePath
        self._movieUrl = url
    }
    
    override init() {
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._desc = aDecoder.decodeObjectForKey("descrition") as? String
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._movieUrl = aDecoder.decodeObjectForKey("movieUrl") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._title, forKey: "title")
        aCoder.encodeObject(self._desc, forKey: "decription")
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._movieUrl, forKey: "movieUrl")
    }
    
    
    
}