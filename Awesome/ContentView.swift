//
//  ContentView.swift
//  Awesome
//
//  Created by James Worladge on 23/1/2025.

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var messages = ["Go Stephy!", "You're Hair is Amazing!", "You Will Kick Arsenal's Ass!", "You're a Legend!"]
    @State private var messagesCount = 0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Show Message") {
                imageName = "image\(imageNumber)"
                imageNumber += 1
                
                message = messages[messagesCount]
                messagesCount += 1
                
                if messagesCount >= messages.count {
                    messagesCount = 0
                }
                
                if imageNumber > 9 {
                    imageNumber = 0
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
