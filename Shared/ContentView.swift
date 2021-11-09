//
//  ContentView.swift
//  Shared
//
//  Created by Bianca on 09/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("sun")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
                .scaledToFit()
                .padding(.bottom, 5.0)
            
            Text("Nome da Cidade")
                .font(Font.system(size: 24))
                .padding(.bottom, 10.0)
            
            HStack {
                Text("Dia da Semana")
                Text("|")
                Text("mes")
                Text("|")
                Text("hora")
            }
            .padding(.bottom, 10.0)
            
            Text("20º")
                .font(Font.system(size: 80))
            
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
