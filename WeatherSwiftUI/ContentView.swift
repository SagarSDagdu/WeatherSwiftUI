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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(spacing: 8) {
                Text("Pune")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .padding()
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                Text("35°")
                    .font(.system(size: 64, weight: .regular))
                    .foregroundColor(.white)
                HStack() {
                    VStack(spacing :6) {
                        Text("Mon")
                            .foregroundColor(.white)
                            .bold()
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        Text("31°")
                            .font(.system(size: 22, weight: .regular))
                            .foregroundColor(.white)
                    }
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
