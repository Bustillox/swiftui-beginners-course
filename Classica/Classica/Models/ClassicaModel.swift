//
//  ClassicaModel.swift
//  Classica
//
//  Created by Juan Pablo Bustillo Guerrero on 15/06/21.
//

import SwiftUI
import AVKit

class ClassicaModel : ObservableObject{
    
    var audioPlayer : AVAudioPlayer?
    
    func loadMusic(selectedSong: String){
        
        if let filePath = Bundle.main.path(forResource: selectedSong, ofType: "mp3"){
            let fileUrl = URL(fileURLWithPath: filePath)
            
            do {
                audioPlayer = try AVAudioPlayer.init(contentsOf: fileUrl)
            } catch {
                print("Error: File not found")
            }
        }
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
    
    func loadAndPlay(song: String){
        loadMusic(selectedSong: song)
        playMusic()
    }
}
