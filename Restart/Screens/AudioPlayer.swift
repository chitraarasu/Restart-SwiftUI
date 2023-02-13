//
//  AudioPlayer.swift
//  Restart
//
//  Created by kirshi on 2/4/23.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    
    print(Bundle.main.url(forResource: sound, withExtension: type))
    print(Bundle.main.path(forResource: sound, ofType: type))
    if let url = Bundle.main.url(forResource: sound, withExtension: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
