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
            
            VStack
            {
                Text("Winterthru,ZH")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
              
                
                VStack(spacing: 8)
                {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:180, height:180)
                    Text("78°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)

                }
                HStack{
                    Spacer()
                    VStack (spacing: 10)
                    {
                        Text("TUE")
                            .font(.title)
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:40, height: 40)
                        Text("42°")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack (spacing: 10)
                    {
                        Text("WED")
                            .font(.title)
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:40, height: 40)
                        Text("22°")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack (spacing: 10)
                    {
                        Text("THR")
                            .font(.title)
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:40, height: 40)
                        Text("32°")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack (spacing: 10)
                    {
                        Text("FRI")
                            .font(.title)
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:40, height: 40)
                        Text("12°")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    
                }
                Spacer()
            }
         
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
