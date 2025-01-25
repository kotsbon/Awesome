//
//  ContentView.swift
//  Awesome
//
//  Created by James Worladge on 23/1/2025.
//

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
                if imageName == "" {
                    imageName = "hand.thumbsup"
                    message = "You Are Awesome!"
                } else if imageName == "hand.thumbsup" {
                    imageName = "sun.max.fill"
                    message = "You Are Great!"
                } else if imageName == "sun.max.fill" {
                    imageName = "hand.thumbsup"
                    message = "You Are Awesome!"
                }
              
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
