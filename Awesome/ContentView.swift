//
//  ContentView.swift
//  Awesome
//
//  Created by James Worladge on 23/1/2025.

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var lastImageNumber = -1
    @State private var lastMessageNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    let numberOfImages = 10
    
    var body: some View {
        
        VStack {
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeIn(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("Show Message") {
                
                let messages = ["Go Stephy!", "You're Hair is Amazing!", "You Will Kick Arsenal's Ass!", "You're a Legend!", "Today is Your Day!", "Hooray!", "You're Amazing!", "You're a Star!"]
                
                var imageNumber: Int
  
                repeat {
                    imageNumber = Int.random(in: 0...numberOfImages-1)
                    
                } while imageNumber == lastImageNumber
                        
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
                var messageNumber: Int
                
                repeat {
                    messageNumber = Int.random(in: 0..<messages.count-1)
                    
                } while messageNumber == lastMessageNumber
                
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                let soundName = "sound0"
                guard let soundFile = NSDataAsset(name: soundName ) else {
                    print("🤬 Could not read file named \(soundName)")
                    return
                }
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                } catch {
                    print("🤬 Could not read file named \(soundName)")
                }
               
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
