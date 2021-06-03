//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Sagar Dagdu on 02/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TopToBottomGradientView(topColor: .blue, bottomColor: .white)
            VStack(spacing: 8) {
                Text("Pune")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .padding(.top)
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                Text("35°")
                    .font(.system(size: 64, weight: .regular))
                    .foregroundColor(.white)
                    .padding()
                HStack(spacing: 24) {
                    DayWeatherView(day: "Mon", systemImageName: "cloud.sun.fill", temperatureText: "31°")
                    DayWeatherView(day: "Tue", systemImageName: "sun.max.fill", temperatureText: "36°")
                    DayWeatherView(day: "Wed", systemImageName: "wind", temperatureText: "30°")
                    DayWeatherView(day: "Thu", systemImageName: "cloud.bolt.rain.fill", temperatureText: "30°")
                    DayWeatherView(day: "Fri", systemImageName: "sun.dust.fill", temperatureText: "31°")
                }
                
                Spacer()
                
                WeatherButton(title: "Change Time of day", textColor: .blue, backgroundColor: .white)
            }.padding(.bottom, 40)
        }
    }
}

struct DayWeatherView: View {
    var day: String
    var systemImageName: String
    var temperatureText: String
    
    var body: some View {
        VStack(spacing :6) {
            Text(day)
                .foregroundColor(.white)
                .font(.system(size: 22))
            Image(systemName: systemImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .padding(.init(top: 4, leading: 0, bottom: 0, trailing: 0))
            Text(temperatureText)
                .font(.system(size: 24, weight: .semibold))
                .foregroundColor(.white)
        }
    }
}

struct TopToBottomGradientView: View {
    var topColor: Color
    var bottomColor: Color

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(textColor)
            .background(backgroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
