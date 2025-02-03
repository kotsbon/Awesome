//
//  ContentView.swift
//  Awesome
//
//  Created by James Worladge on 23/1/2025.
//  Morphed into Button If Else challenge

import SwiftUI

struct ContentView: View {
    //    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            //            Text(message)
            //                .font(.largeTitle)
            //                .fontWeight(.heavy)
            //                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Press Me!") {
                let imageName1 = "image0"
                let imageName2 = "image1"
                
                //                message = message == message1 ? message2 : message1
                imageName = imageName == imageName1 ? imageName2 : imageName1
                
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
