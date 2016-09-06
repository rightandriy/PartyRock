//
//  PartyRock.swift
//  PartyRock
//
//  Created by Andriy Pryvalov on 31.08.16.
//  Copyright © 2016 Andriy Pryvalov. All rights reserved.
//

import Foundation

class PartyRock {
    private var _ImgURL: String!
    private var _VideoURL: String!
    private var _VideoTitle: String!
    
    var imgURL:String {
        return _ImgURL
    }
    
    var VideoURL: String {
        return _VideoURL
    }
    
    var VideoTitle:String{
        return _VideoTitle
    }
    
    
    init(imgURL:String, videoURL:String, videoTitle:String) {
        _ImgURL = imgURL
        _VideoURL = videoURL
        _VideoTitle = videoTitle
    }
}
