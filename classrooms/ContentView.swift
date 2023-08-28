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
            Image("classrooms")
                .resizable()
                .scaledToFit()
            
            
            .padding()
            
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
