//
//  ContentView.swift
//  WeatherApp
//
//  Created by Khan on 27.09.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        ZStack{
         
            LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
         
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
