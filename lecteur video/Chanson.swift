//
//  Chanson.swift
//  lecteur video
//
//  Created by soufiane on 23/07/18.
//  Copyright © 2018 ES. All rights reserved.
//

import Foundation

class Chanson {
    
    private var _artist: String
    private var _title: String
    private var _code: String
    private var _baseUrlVideo = "https://www.youtube.com/embed/"
    private var _baseUrlMiniature = "http://i.ytimg.com/vi/"
    private var _finUrlMiniature = "/maxresdefault.jpg"
    
    var artist: String {
        return _artist
    }
    
    var title: String {
        return _title
    }
    
    var videoUrl: String {
        return _baseUrlVideo + _code
    }
    var miniatureUrl: String {
        return _baseUrlMiniature + _code + _finUrlMiniature
    }
    
    init(artist: String, title: String, code:String) {
        self._artist = artist
        self._title = title
        self._code = code
    }
    
    
}
