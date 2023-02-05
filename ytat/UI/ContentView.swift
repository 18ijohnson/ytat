//
//  ContentView.swift
//  ytat
//
//  Created by Isaac Johnson on 1/26/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: Int
        
    init(selection: Int = 0) {
        self.selection = selection
    }
    
    var body: some View {
        NavigationView() {
            TabView(selection: $selection) {
                VideoGridView(topic: "default")
                    .tabItem {
                        HStack {
                            Text("Home")
                        }
                    }
                    .tag(0)
                VideoGridView(topic: "FEtopics_news")
                    .tabItem {
                        HStack {
                            Text("News")
                        }
                    }
                    .tag(1)
                VideoGridView(topic: "FEtopics_gaming")
                    .tabItem {
                        HStack {
                            Text("Gaming")
                        }
                    }
                    .tag(2)
                VideoGridView(topic: "FEtopics_sports")
                    .tabItem {
                        HStack {
                            Text("Sports")
                        }
                    }
                    .tag(3)
//                VideoGridView(topic: "FEtopics_music")
//                    .tabItem {
//                        HStack {
//                            Text("Music")
//                        }
//                    }
//                    .tag(4)
            }
            .background { HeaderView() }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
