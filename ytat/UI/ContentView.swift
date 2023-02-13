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
                SearchView()
                    .tabItem{
                        HStack {
                            Image(systemName: "magnifyingglass")
                            //if selection != -1 { Text("Search") }
                        }
                    }
                    .tag(-1)
                VideoGridView(topic: "default")
                    .tabItem {
                        HStack {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    }
                    .tag(0)
                VideoGridView(topic: "FEtopics_news")
                    .tabItem {
                        HStack {
                            Image(systemName: "newspaper.fill")
                            Text("News")
                        }
                    }
                    .tag(1)
//                VideoGridView(topic: "FEtopics_gaming")
//                    .tabItem {
//                        HStack {
//                            Image(systemName: "gamecontroller.fill")
//                            Text("Gaming")
//                        }
//                    }
//                    .tag(2)
                VideoGridView(topic: "FEtopics_sports")
                    .tabItem {
                        HStack {
                            Image(systemName: "sportscourt")
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
                SubscriptionsView()
                    .tabItem {
                        HStack {
                            Image(systemName: "play.rectangle.on.rectangle.fill")
                            Text("Subscriptions")
                        }
                    }
                    .tag(5)
                LibraryView()
                    .tabItem {
                        HStack {
                            Image(systemName: "books.vertical.fill")
                            Text("Library")
                        }
                    }
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
