//
//  TestView.swift
//  TypingApp
//
//  Created by Nathan Davis on 12/8/23.
//

import SwiftUI

struct TestView: View {
    var passage = "This is a test. This is only a test. I need it to wrap around. And then wrap around some more. And some more."
    @State var currentWord = "This"
    @State var typedWord = ""
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading){
                Text(passage)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                Text(typedWord)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .foregroundStyle(.blue)
                Text("T")
                    .foregroundStyle(.red)
                    .background(.red)
                    .opacity(0.4)
            }
            TextField(currentWord,
                      text: $typedWord)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled(true)
        }
        .padding()
    }
}

#Preview {
    TestView()
}
