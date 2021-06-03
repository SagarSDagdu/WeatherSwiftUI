//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Sagar Dagdu on 02/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = true
    
    var body: some View {
        ZStack {
            TopToBottomGradientView(topColor: isNight ? .black: .blue, bottomColor: isNight ? .gray : .white)
            VStack(spacing: 8) {
                TodayWeatherView(cityName: "Pune", weatherImageSystemName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperatureText: isNight ? "30°" : "35°")
                HStack(spacing: 24) {
                    DayWeatherView(day: "Mon", systemImageName: "cloud.sun.fill", temperatureText: "31°")
                    DayWeatherView(day: "Tue", systemImageName: "sun.max.fill", temperatureText: "36°")
                    DayWeatherView(day: "Wed", systemImageName: "wind", temperatureText: "30°")
                    DayWeatherView(day: "Thu", systemImageName: "cloud.bolt.rain.fill", temperatureText: "30°")
                    DayWeatherView(day: "Fri", systemImageName: "sun.dust.fill", temperatureText: "31°")
                }
                
                Spacer()
                Button(action: {
                    isNight.toggle()
                }, label: {
                    WeatherButton(title: "Change Time of day", textColor: .blue, backgroundColor: .white)
                }).padding(.bottom, 40)
            }
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
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}

struct TodayWeatherView: View {
    var cityName: String
    var weatherImageSystemName: String
    var temperatureText: String
    
    var body: some View {
        Text(cityName)
            .foregroundColor(.white)
            .font(.system(size: 32, weight: .medium, design: .default))
            .padding(.top)
        Image(systemName: weatherImageSystemName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        Text(temperatureText)
            .font(.system(size: 64, weight: .regular))
            .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
