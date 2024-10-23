//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Development on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString: String = "Yo!"
    
    var body: some View {
        //        VStack {
        //            Image(systemName: "swift")
        //                .resizable()
        //                .scaledToFit()
        //                .foregroundStyle(.orange)
        //                .padding()
        //            //                .padding(.bottom, 100)
        //            //                .background(.blue)
        //
        //
        //            Text("You Are Awesome!")
        //                .font(.largeTitle)
        //                .fontWeight(.semibold)
        //                .foregroundStyle(.red)
        //            //                .italic()
        //            //                .background(.yellow)
        //            //                .padding()
        //
        //        }
        
        
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                            .padding()
                            .frame(width: 300, height: 150)
                .border(.orange, width: 1)
            
            HStack {
                Button("Awesome") {
                    // This is the action performed when the buttos is pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great") {
                    // This is the action performed when the buttos is pressed
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
            .border(.purple, width: 5)
            
        }
        
    }
}

#Preview {
    ContentView()
}
