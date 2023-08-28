//
//  ContentView.swift
//  classrooms
//
//  Created by Hanâa Belhamidi on 28/08/2023.
//

import SwiftUI

struct ContentView: View {
    // Déclarer une var qui est un état "a state"
    @State private var cliqued = false
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
            
            // Click Here Button
            Button(cliqued ? "Return" : "Click Here") {
                cliqued.toggle()
            }
            .buttonStyle(.borderedProminent)
                .tint(Color.purple)
                .foregroundColor(Color.white)
                .padding()
            
            // Logo
            Image("classrooms")
                .resizable()
                .scaledToFit()
                .padding()
            
            // Menu
            Image(systemName: "house")
                .imageScale(.large)
                .foregroundColor(.purple)
            HStack{
                Text("Home")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                    .padding(.leading, 3.0)
                Text("Courses")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 3.0)
                Text("About us")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 3.0)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
