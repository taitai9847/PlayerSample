//
//  ViewController.swift
//  PlayerSample
//
//  Created by 石川太洋 on 2020/09/11.
//  Copyright © 2020 石川太洋. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer
import AVKit

class ViewController: UIViewController {
	
	var playerController = AVPlayerViewController()
	var player = AVPlayer()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	
	@IBAction func playVideo(_ sender: Any) {
		
		guard let videoURL = Bundle.main.path(forResource: "clip", ofType: "mp4") else {
			print("url is nil")
			return
		}
		
		let videoPathUrl = URL(fileURLWithPath: videoURL)
		
		let player = AVPlayer(url: videoPathUrl)
		
		let controller = AVPlayerViewController()
		controller.player = player
		
		present(controller, animated: true) {
			player.play()
		}
		
	}
	
	
}

