//
//  IndividualWordView.swift
//  TypingApp
//
//  Created by Nathan Davis on 10/20/23.
//

import SwiftUI

struct IndividualWordView: View {
    
    var word: String
    var bestTime: Double
    @State var typed = ""
    @State var wordStart = Date()
    @State var wordEnd = Date()
    @State var best = 100.0
    
    var body: some View {
        
        ZStack {
            VStack {
                Text("Best time: " + String(format: "%.3f", best))
                    .padding(.bottom, 150)
            }
            VStack {
                Text(word)
                TextField(word,
                          text: $typed)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled(true)
                .background(word.contains(typed) || typed == "" ? .white : .red.opacity(0.3))
                    .padding()
            }
            .onAppear() {
                best = bestTime
            }
            .onChange(of: typed) { newValue in
                checkWord()
        }
        }
        
    }
    
    func checkWord() {
        if typed == "" {
            wordStart = Date()
        }
        if typed == word + " " {
            wordEnd = Date()
            typed = ""
            let wordSpeed = wordEnd.timeIntervalSince(wordStart)
            if wordSpeed < best {
                best = wordSpeed
                print("new best!")
            }
            
            
            print(word.trimmingCharacters(in: .punctuationCharacters) + ": " + String(wordSpeed))
            
            
        }
        
    }
}

#Preview {
    IndividualWordView(word: "Here", bestTime: 100.0)
}
