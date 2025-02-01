//
//  ContentView.swift
//  Awesome
//
//  Created by James Worladge on 23/1/2025.
//  Morphed into Button If Else challenge

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .padding()
            
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You Are Great!"
                let message2 = "You Are Awesome!"
                let imageName1 = "sun.max.fill"
                let imageName2 = "hand.thumbsup"
               
                message = (message == message1) ? message2 : message1
                imageName = (imageName == imageName1) ? imageName2 : imageName1
                
//                if message == message1 {
//                    message = message2
//                    imageName = imageName1
//                } else {
//                    message = message1
//                    imageName = imageName2
//                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
