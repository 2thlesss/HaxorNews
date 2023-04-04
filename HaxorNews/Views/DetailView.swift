//
//  DetailView.swift
//  HaxorNews
//
//  Created by Thomas Jadie Reeves on 4/4/23.
//

import SwiftUI


struct DetailView: View {
    
    let url : String?
    
    
    
    var body: some View {
        WebView(urlString: url)
            .navigationTitle("Haxor News")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



