//
//  ContentView.swift
//  TypingApp
//
//  Created by Nathan Davis on 10/19/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundStyle(.white)
                VStack {
                    Text("Type Trainer!")
                        .font(.system(size: 44))
                        .fontWeight(.bold)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        NavigationLink {
                            TypingView()
                        } label: {
                            Text("Start")
                                .font(.system(size: 20))
                        }
                        .padding(20)
                    })
                    .background(.black)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
                    .padding(10)
                    Spacer()
                    
                }
                .padding()
            }
        }
    }
    
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
