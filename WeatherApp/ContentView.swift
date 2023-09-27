//
//  ContentView.swift
//  WeatherApp
//
//  Created by Khan on 27.09.23.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
      
        ZStack{
            BackgroundView(isNight: $isNight)
//            LinearGradient(gradient: Gradient(colors: [.blue,Color("background")]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
//
            VStack
            {
                CityTextView(cityName: "Winterthur,ZH")
                
                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 33)
        
                HStack (spacing: 30){
                    
                   WeatherDayView(dayOfWeeks: "FR", imageName: "cloud.sun.fill", temperature: 12)
                    
                    WeatherDayView(dayOfWeeks: "SU", imageName: "sun.max.fill", temperature: 23)
                    
                    WeatherDayView(dayOfWeeks: "MO", imageName: "wind.snow", temperature: 24)
                    
                    WeatherDayView(dayOfWeeks: "TU", imageName: "sunset.fill", temperature: 11)
                    
                    WeatherDayView(dayOfWeeks: "Th", imageName: "snow", temperature: 30)
                }
                Spacer()
                    
               
                Button{
                    
                    isNight.toggle()
               
                    
                }
                label:{
                Text("Change Day Time")
                        .frame(width:280, height: 50)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .background(Color.white)
                        .cornerRadius(10.0)
                        
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

struct WeatherDayView: View {
    
    var dayOfWeeks: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack
        {
            Text(dayOfWeeks)
                .font(.title)
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width:40, height: 40)
            Text(String(temperature)+"°")
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View{
   
    @Binding var isNight: Bool
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("background")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    
    var cityName: String
    var body: some View{
      
        Text(cityName) .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
        
    }
}

struct MainWeatherView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 8)
        {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:180, height:180)
            Text(String(temperature)+"°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
            
        }
        .padding(.bottom,40)
    }
}


