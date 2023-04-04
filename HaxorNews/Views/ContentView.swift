//
//  ContentView.swift
//  HaxorNews
//
//  Created by Thomas Jadie Reeves on 4/4/23.
//

import SwiftUI
import WebKit


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)){
                   HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationBarTitle("Haxor News")
            
        }
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


