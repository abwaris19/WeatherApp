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
            BackgroundView(topColor: .blue, bottomColor: Color("background"))
            LinearGradient(gradient: Gradient(colors: [.blue,Color("background")]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            VStack
            {
                CityTextView(cityName: "Winterthur,ZH")
                
              
                
                MainWeatherView(imageName: "cloud.sun.fill", temperature: 33)
        
                HStack (spacing: 30){
                    
                   WeatherDayView(dayOfWeeks: "FR", imageName: "cloud.sun.fill", temperature: 12)
                    
                    WeatherDayView(dayOfWeeks: "SU", imageName: "sun.max.fill", temperature: 23)
                    
                    WeatherDayView(dayOfWeeks: "MO", imageName: "wind.snow", temperature: 24)
                    
                    WeatherDayView(dayOfWeeks: "TU", imageName: "sunset.fill", temperature: 11)
                    
                    WeatherDayView(dayOfWeeks: "Th", imageName: "snow", temperature: 30)
                }
                Spacer()
                    
                WeatherAppButton(message: "Tapped", buttonName: "Change the Days")
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
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
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

struct WeatherAppButton: View{
    var message: String
    var buttonName: String
    var body: some View{
        
        Button{
            print(message)
        }
        label:{
        Text(buttonName)
                .frame(width:280, height: 50)
                .font(.system(size: 20, weight: .bold, design: .default))
                .background(Color.white)
                .cornerRadius(10.0)
                
    }
    }
}
