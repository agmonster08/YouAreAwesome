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
        
        
        GeometryReader { geometry in
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
                //                .border(.orange, width: 1)
                    .padding()
                
                Spacer()
                
                Divider()
                    .background(.black)
                    .padding()
                    .frame(width: 150.0)
                
                
                Rectangle()
                    .fill(.indigo)
                    .frame(width: geometry.size.width * (2/3), height: 1)
                
                
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
    
}


#Preview {
    ContentView()
}
