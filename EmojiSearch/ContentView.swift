//
//  ContentView.swift
//  EmojiSearch
//
//  Created by Hidayat Abisena on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .foregroundStyle(.purple)
            
            Text("Hello, iOS Dev!")
                .fontWeight(.bold)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
