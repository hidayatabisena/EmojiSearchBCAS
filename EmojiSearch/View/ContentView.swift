//
//  ContentView.swift
//  EmojiSearch
//
//  Created by Hidayat Abisena on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    var emojis: [Emoji] = EmojiProvider.allEmojis()
    
    @State private var searchText: String = ""
    
    var emojiSearchResults: [Emoji] {
        guard !searchText.isEmpty else { return emojis }
        
        return emojis.filter { emoji in
            emoji.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    var body: some View {
        NavigationStack {
            List(emojiSearchResults) { emoji in
                EmojiRow(emoji: emoji)
            }
            .navigationTitle("Emoji")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "What emoji's that you're looking for?"
            )
            .overlay {
                if emojiSearchResults.isEmpty {
                    ContentUnavailableView.search(text: searchText)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
