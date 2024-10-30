//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Development on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString: String = " "
    
    var body: some View {
        
        
        
        VStack {
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
                // This is the action performed when the buttos is pressed
//                if messageString == messageOne {
//                    messageString = messageTwo
//                } else {
//                    messageString = messageOne
//                }
                messageString = messageString == messageOne ? messageTwo : messageOne
                
            }
            .buttonStyle(.borderedProminent)
            
            
            .padding()
            
        }
    }
}



#Preview {
    ContentView()
}
