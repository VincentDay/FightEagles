//
//  SecondViewController.swift
//  Fight Eagles Fight
//
//  Created by Vince Day on 12/16/15.
//  Copyright © 2015 Vince Day. All rights reserved.
//

import UIKit
import MapKit
import AVFoundation

class SecondViewController: UIViewController {
    
    var locManager = CLLocationManager()
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSBundle.mainBundle().URLForResource("06 Gonna Fly Now", withExtension: "mp3")
        
        try! player = AVAudioPlayer(contentsOfURL: url!)
        player.prepareToPlay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playSong(sender: AnyObject) {
        if(player.playing == true){
            player.stop()
        } else {
            player.currentTime = 0
            player.play()
        }
    }

}