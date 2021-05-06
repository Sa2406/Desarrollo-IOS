//
//  VideoVC.swift
//  Actividad_13_SOLY
//
//  Created by user167235 on 5/5/21.
//  Copyright © 2021 user167235. All rights reserved.
//
import SwiftUI
import UIKit
import AVKit
import AVFoundation
var audioPlayer: AVAudioPlayer!
import UIKit

class VideoVC: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let ligaVideo = "http://walterebert.com/playground/video/hls/sintel-trailer.m3u8"

        let urlvideo = URL(string: ligaVideo)

        if let urlvideo = urlvideo
        {
            let asset = AVAsset(url:urlvideo)
            let item = AVPlayerItem(asset: asset)
            let miPlayer = AVPlayer(playerItem: item)

            self.player = miPlayer
                miPlayer.play()
        }
    }
}
