//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Ravi Tiwari on 3/5/17.
//  Copyright © 2017 SelfStudy. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func playSongPressed(_ sender: UIButton) {
        let songTitle = "Love me thoda aur..."
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }

}
