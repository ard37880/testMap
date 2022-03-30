//
//  ContentView.swift
//  testMap
//
//  Created by Andrew Davis on 3/29/22.
//
//  admin 199eRTMx%

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            SwiftUIWebView (url: URL(string: "https://demo.rastrac.net/rtds?package=full"))
                .navigationTitle("")
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
