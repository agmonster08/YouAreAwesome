//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Development on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString: String = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
        
        
        
        VStack {
            Group {
                
                Text("This is part of a grup")
                Text("This is part of a grup")
                Text("This is part of a grup")
                Text("This is part of a grup")
                Text("This is part of a grup")
                Text("This is part of a grup")
                Text("This is part of a grup")
                Text("This is part of a grup")
                Text("This is part of a grup")
                Text("This is part of a grup")
                Text("This is part of a group")
            }
            .font(.largeTitle)
            .fontWeight(.semibold)
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/) // Will expand the View's size to fit the size of its container
            //                .border(.orange, width: 1)
                .padding()
            
            Spacer()
            
            
            
            HStack {
                Button("Awesome") {
                    // This is the action performed when the buttos is pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("Great") {
                    // This is the action performed when the buttos is pressed
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
            //            .border(.purple, width: 5)
            .padding()
            
        }
    }
}



#Preview {
    ContentView()
}
