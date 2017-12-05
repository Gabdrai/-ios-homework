//
//  Sound.swift
//  EmojiDictionary
//
//  Created by Gabriel Drai on 04/12/2017.
//  Copyright © 2017 Developer Institute. All rights reserved.
//
import AVFoundation

var player: AVAudioPlayer?

func playSound() {
    guard let url = Bundle.main.url(forResource: "soundName", withExtension: "mp3") else {
        print("url not found")
        return
    }
    
    do {
        /// this codes for making this app ready to takeover the device audio
        try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        
        /// change fileTypeHint according to the type of your audio file (you can omit this)
        
        /// for iOS 11 onward, use :
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        
        /// else :
        /// player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3)
        
        // no need for prepareToPlay because prepareToPlay is happen automatically when calling play()
        player!.play()
    } catch let error as NSError {
        print("error: \(error.localizedDescription)")
    }
}
