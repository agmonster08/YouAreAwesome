//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Development on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString: String = "Namaste"
    
    var body: some View {
        
        
        
        VStack {
            Spacer()
            
            Image(systemName: "cloud.sun.rain.fill")
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.516, saturation: 0.504, brightness: 0.974))
                .cornerRadius(30)
                .shadow(radius: 30, x: 20, y: 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.teal, lineWidth: 1)
                )
//                .clipShape(Circle())
                .padding()
            
            
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
            .padding()
            
        }
    }
}



#Preview {
    ContentView()
}
