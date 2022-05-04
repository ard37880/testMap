//
//  WebView.swift
//  myApp_RT
//
//  Created by Andrew Davis on 5/3/22.
//

import Foundation
import SwiftUI
import WebKit


struct SwiftUIWebView: UIViewRepresentable {
    
    let url: URL?
        
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        return
            WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let myURL = url else {
            return
    }
            let request = URLRequest(url: myURL)
        uiView.load(request)
    }
}
