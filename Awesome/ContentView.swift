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
    @State private var messagesCount = 0
    @State private var lastImageNumber = 0
    @State private var lastMessageNumber = 0
    
    var messages = ["Go Stephy!", "You're Hair is Amazing!", "You Will Kick Arsenal's Ass!", "You're a Legend!", "Today is Your Day!", "Hooray!", "You're Amazing!", "You're a Star!"]
    
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
                
                imageName = "image\(Int.random(in: 0...9))"
                
                message = messages[Int.random(in: 0..<messages.count)]
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
