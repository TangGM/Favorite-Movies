//
//  MovieCell.swift
//  Favorite Movies
//
//  Created by Tang on 2016/5/23.
//  Copyright © 2016年 Tang. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieDecs: UILabel!
    @IBOutlet weak var movieLink: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        movieImg.layer.cornerRadius = movieImg.frame.size.width / 2
    }

    func configureCell(movie: Movie) {
        movieTitle.text = movie.title
        movieDecs.text = movie.desc
        movieLink.text = movie.movieUrl
    }
   
}
