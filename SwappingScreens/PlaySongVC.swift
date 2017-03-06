//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Ravi Tiwari on 3/6/17.
//  Copyright © 2017 SelfStudy. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitle: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get{
            return _selectedSong
        }
        set{
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songTitle.text = selectedSong
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
