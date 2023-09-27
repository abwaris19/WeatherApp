//
//  WeatherButtons.swift
//  WeatherApp
//
//  Created by Khan on 27.09.23.
//
import SwiftUI

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
