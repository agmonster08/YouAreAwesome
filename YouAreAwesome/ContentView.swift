//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Development on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString: String = ""
    
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
                .foregroundStyle(.red)
                .padding()
            
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
            
        }
        
    }
}

#Preview {
    ContentView()
}
