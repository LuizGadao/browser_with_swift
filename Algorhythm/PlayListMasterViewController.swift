//
//  ViewController.swift
//  Algorhythm
//
//  Created by Luiz Carlos Gonçalves dos Anjos on 23/04/15.
//  Copyright (c) 2015 Luiz Carlos Gonçalves dos Anjos. All rights reserved.
//

import UIKit

class PlayListMasterViewController: UIViewController {
    
    let IDENTIFIER_PLAYLIST_DETAIL = "showPlaylistDetail"
    var playlistsArray:[UIImageView] = []

    @IBOutlet weak var item0: UIImageView!
    @IBOutlet weak var item1: UIImageView!
    @IBOutlet weak var item2: UIImageView!
    @IBOutlet weak var item3: UIImageView!
    @IBOutlet weak var item4: UIImageView!
    @IBOutlet weak var item5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playlistsArray = [item0, item1, item2,
            item3, item4, item5]
        
        for index in 0..<playlistsArray.count{
            let playlist = Playlist(index: index)
            let playlistImageView = playlistsArray[index]
            
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == IDENTIFIER_PLAYLIST_DETAIL{
            
            let playlistImageView = sender!.view as UIImageView
            if let index = find(playlistsArray, playlistImageView){
                let playListDetailController = segue.destinationViewController as PlayListViewController
                playListDetailController.playlist = Playlist(index: index)
            }
        }
    }
    
    @IBAction func clickImageView(sender: AnyObject) {
        performSegueWithIdentifier(IDENTIFIER_PLAYLIST_DETAIL, sender: sender)
    }

}

