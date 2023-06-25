//
//  ContentView.swift
//  AboutMeSwiftUI
//
//  Created by user on 6/21/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var message: String = ""
    
    var body: some View {
        VStack {
            Text("Tatiana Bondarenko")
                .font(.title)
                .fontWeight(.bold)
            Image("avatar")
                .resizable()
                .scaledToFit()
            Spacer()
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
            TextField("Send me a message...", text: $message)
                .frame(height: 35)
                .padding(.leading)
                .border(.primary)
            Button("Send") {
                print(message)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            Spacer()
        }
        .padding()
        .background(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
