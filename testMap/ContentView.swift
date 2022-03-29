//
//  ContentView.swift
//  testMap
//
//  Created by Andrew Davis on 3/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            SwiftUIWebView (url: URL(string: "http://www.apple.com"))
                .navigationTitle("a")
                .edgesIgnoringSafeArea(.all)
                .navigationBarHidden(true)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
