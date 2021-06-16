//
//  WaltzModel.swift
//  Waltz
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import SwiftUI
import AVKit

class WaltzModel : ObservableObject {
    
    var audioPlayer : AVAudioPlayer?
    
    func loadMusic(){
        
        if let filePath = Bundle.main.path(forResource: "Waltz of the Flowers", ofType: "mp3"){
            let fileUrl = URL(fileURLWithPath: filePath)
            
            do {
                audioPlayer = try AVAudioPlayer.init(contentsOf: fileUrl)
            } catch {
                print("Error: File not found")
            }
        }
    }
    
    func loadAndPlay(){
        loadMusic()
        playMusic()
    }
    
    func playMusic(){
        audioPlayer?.play()
    }
    
    func pauseMusic(){
        audioPlayer?.pause()
    }
    
    func stopMusic(){
        audioPlayer?.stop()
        audioPlayer = nil
    }
}
