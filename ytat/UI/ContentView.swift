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
                    .edgesIgnoringSafeArea(.horizontal)
                    .tag(-1)
                BrowseView(topic: "default")
                    .tabItem {
                        HStack {
                            Image(systemName: "house.fill")
                            //Text("Home")
                        }
                    }
                    .edgesIgnoringSafeArea(.horizontal)
                    .tag(0)
                BrowseView(topic: "FEtopics_news")
                    .tabItem {
                        HStack {
                            Image(systemName: "newspaper.fill")
                            //Text("News")
                        }
                    }
                    .tag(1)
                    .edgesIgnoringSafeArea(.horizontal)
//                BrowseView(topic: "FEtopics_gaming")
//                    .tabItem {
//                        HStack {
//                            Image(systemName: "gamecontroller.fill")
//                            //Text("Gaming")
//                        }
//                    }
//                    .edgesIgnoringSafeArea(.horizontal)
//                    .tag(2)
                BrowseView(topic: "FEtopics_sports")
                    .tabItem {
                        HStack {
                            Image(systemName: "sportscourt")
                            //Text("Sports")
                        }
                    }
                    .edgesIgnoringSafeArea(.horizontal)
                    .tag(3)
//                BrowseView(topic: "FEtopics_music")
//                    .tabItem {
//                        HStack {
//                            Text("Music")
//                        }
//                    }
//                    .edgesIgnoringSafeArea(.horizontal)
//                    .tag(4)
                SubscriptionsView()
                    .tabItem {
                        HStack {
                            Image(systemName: "play.rectangle.on.rectangle.fill")
                            //Text("Subscriptions")
                        }
                    }
                    .edgesIgnoringSafeArea(.horizontal)
                    .tag(5)
                LibraryView()
                    .tabItem {
                        HStack {
                            Image(systemName: "books.vertical.fill")
                            //Text("Library")
                        }
                    }
                    .edgesIgnoringSafeArea(.horizontal)
                    .tag(6)
            }
            .background { HeaderView() }
            .edgesIgnoringSafeArea(.all)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
