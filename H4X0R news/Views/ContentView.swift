//
//  ContentView.swift
//  H4X0R news
//
//  Created by Ayberk Aktürk on 21.03.2022.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }.navigationBarTitle("H4X0R News")
            
        }.edgesIgnoringSafeArea(.all)
            .onAppear {
                self.networkManager.fetchData()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



