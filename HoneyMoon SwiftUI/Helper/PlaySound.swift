//
//  PlaySound.swift
//  HoneyMoon SwiftUI
//
//  Created by Jinu on 03/12/2023.
//

import AVFoundation

var audioPlayer : AVAudioPlayer?
func playSound(sound: String , type : String){
    if let path = Bundle.main.url(forResource: sound, withExtension:type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: path)
            audioPlayer?.play()
        }
        catch{
            print(error.localizedDescription)
        }
    }
    
}
