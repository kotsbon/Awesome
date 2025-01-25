//
//  ContentView.swift
//  Awesome
//
//  Created by James Worladge on 23/1/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("Your Are Awesome")
                .font(.largeTitle)
                .fontWeight(.heavy )
                .foregroundStyle(.red)
        
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
