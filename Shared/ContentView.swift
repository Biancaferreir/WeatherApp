//
//  ContentView.swift
//  Shared
//
//  Created by Bianca on 09/11/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = WeatherViewModel()
    
    var body: some View {
        VStack {
            Image(uiImage: viewModel.forecastIcon)
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
                .scaledToFit()
                .padding(.bottom, 5.0)
            
            Text(viewModel.cityName)
                .font(Font.system(size: 24))
                .padding(.bottom, 10.0)
        
            HStack {
                Text("Dia da Semana")
                Text("|")
                Text("mes")
                Text("|")
                Text("hora")
            }
            .font(Font.system(size: 14))
            .padding(.bottom, 10.0)
            
            HStack {
                Group {
                    Text("\(viewModel.tempMin)º")
                        .font(Font.system(size: 40))
                    Text("\(viewModel.temperature)º")
                        .font(Font.system(size: 60))
                    Text("\(viewModel.tempMax)º")
                        .font(Font.system(size: 40))
                }
            }.scaledToFit()
            
            HStack {
                Group {
                    VStack {
                        Text("10º")
                        Image("sun")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .scaledToFit()
                    }
                    VStack {
                        Text("10º")
                        Image("sun")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .scaledToFit()
                    }
                    VStack {
                        Text("10º")
                        Image("sun")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .scaledToFit()
                    }
                    VStack {
                        Text("10º")
                        Image("sun")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .scaledToFit()
                    }
                    VStack {
                        Text("10º")
                        Image("sun")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .scaledToFit()
                    }
                }.padding(20.0)
            }
        }.ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
