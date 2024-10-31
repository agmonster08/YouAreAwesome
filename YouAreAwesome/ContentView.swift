//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Development on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString: String = ""
    @State private var imageName: String = ""
    @State private var imageNumber: Int = 0
    
    var body: some View {
        
        
        
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // Will expand the View's size to fit the size of its container
                .padding()
            
            Spacer()
            
            
            Button("Show Message") {
                
                let messageOne: String = "You Are Awesome!"
                let messageTwo: String = "You Are Great!"
                messageString = (messageString == messageOne ? messageTwo : messageOne)
                
                imageName = "image\(imageNumber)"
                imageNumber += 1
                if imageNumber > 9 {
                    imageNumber = 0
                }
            
                
            }
            .buttonStyle(.borderedProminent)
            
            
            .padding()
            
        }
    }
}



#Preview {
    ContentView()
}
