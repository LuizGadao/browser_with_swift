//
//  PlayListViewController.swift
//  Algorhythm
//
//  Created by Luiz Carlos Gonçalves dos Anjos on 23/04/15.
//  Copyright (c) 2015 Luiz Carlos Gonçalves dos Anjos. All rights reserved.
//

import UIKit

class PlayListViewController: UIViewController {

    var playlist:Playlist?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var artist0: UILabel!
    @IBOutlet weak var artist1: UILabel!
    @IBOutlet weak var artist2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if playlist != nil{
            imageView.image = playlist!.largeIcon
            imageView.backgroundColor = playlist!.backgroundColor
            titleLabel.text = playlist!.title
            descriptionLabel.text = playlist!.description
            
            artist0.text = playlist!.artists[0]
            artist1.text = playlist!.artists[1]
            artist2.text = playlist!.artists[2]
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
    
}
