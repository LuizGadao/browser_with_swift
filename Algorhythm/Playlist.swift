//
//  Playlist.swift
//  Algorhythm
//
//  Created by Luiz Carlos Gonçalves dos Anjos on 23/04/15.
//  Copyright (c) 2015 Luiz Carlos Gonçalves dos Anjos. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    var title:String?
    var description:String?
    var icon:UIImage?
    var largeIcon:UIImage?
    var artists:[String] = []
    var backgroundColor:UIColor = UIColor.clearColor()
    
    init(index:Int){
        let library = Library().library
        let item = library[index]
        
        title = item["title"] as String!
        description  = item["description"] as String!
        
        var iconName = item["icon"] as String!
        icon = UIImage(named: iconName)
        
        iconName = item["largeIcon"] as String!
        largeIcon = UIImage(named: iconName)
        
        artists = item["artists"] as [String]
        
        let colors = item["backgroundColor"] as [String:CGFloat]
        backgroundColor = rgbFromColorDictinary(colors)
        
    }
    
    func rgbFromColorDictinary(color:[String:CGFloat])->UIColor{
        let red = color["red"]!
        let green = color["green"]!
        let blue = color["blue"]!
        let alpha = color["alpha"]!
        
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}