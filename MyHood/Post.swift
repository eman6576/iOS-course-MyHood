//
//  Post.swift
//  MyHood
//
//  Created by Emanuel  Guerrero on 3/10/16.
//  Copyright © 2016 Project Omicron. All rights reserved.
//

import Foundation

class Post {
    private var imagePath: String
    private var title: String
    private var postDesc: String
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
}