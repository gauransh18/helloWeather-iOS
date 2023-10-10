//
//  WeatherRow.swift
//  helloWeather
//
//  Created by Gauransh Sharma on 11/10/23.
//

import SwiftUI

struct WeatherRow: View {

    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: logo)
                .font(.title)
                .frame(width: 20, height: 20)
                .padding()
                .background(Color(hue: 1, saturation: 0, brightness: 0.888))
                .cornerRadius(50)
            
            
            VStack(alignment: .leading, spacing: 8){
                Text(name)
                    .font(.caption)
                
                
                Text(value)
                    .bold()
                    .font(.title)
            }
        }
    }
}

#Preview {
    WeatherRow(logo: "thermometer", name: "feels like", value: "8°")
}
