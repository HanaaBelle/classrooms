//
//  ContentView.swift
//  classrooms
//
//  Created by Hanâa Belhamidi on 28/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            // Dark Mode
            Image(systemName: "moon")
                .imageScale(.large)
                .foregroundColor(.purple)
            Text("Dark Mode")
                .fontWeight(.bold)
                .padding(.bottom)
            
            
            Spacer()
            
            // Welcome Text
            Image(systemName: "book")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome To Our Classrooms !")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 200.0)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
