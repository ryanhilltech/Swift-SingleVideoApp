//
//  ViewController.swift
//  Video Player
//
//  Created by Ryan Hill on 1/1/18.
//  Copyright © 2018 Ryan Hill. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBAction func ButtonAction(_ sender: Any)
    {
        if let path = Bundle.main.path(forResource: "IMG_0322", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion:
                {
                video.play()
            })
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

