//
//  ContentView.swift
//  Awesome
//
//  Created by James Worladge on 23/1/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Programmer!"
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .padding()
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    message = "Awesome!"
                }
                
                Button("Great") {
                    message = "Great!"
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
