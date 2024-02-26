//
//  ContentView.swift
//  CWC GridTest
//
//  Created by Mark Bergeson on 2/25/24.
//

import SwiftUI

struct ContentView: View {
    
    var photos = ["gallery1", "gallery2", "gallery3", "gallery4", "gallery5", "gallery6", "gallery7", "gallery8", "gallery9", "gallery10", "gallery11"]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid (columns: [GridItem(spacing: 0), GridItem(spacing: 0), GridItem(spacing: 0)], spacing: 0) {
                ForEach (photos, id: \.self) { p in
                    Image(p)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
