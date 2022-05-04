//
//  ContentView.swift
//  myApp_RT
//
//  Created by Andrew Davis on 5/3/22.
//


//MARK: Start

import SwiftUI
import WebKit
import Foundation
import UIKit

struct ContentView: View {
    
    @State var username: String = ""
    @State private var password: String = "" //made private to hide password
    @State var server: String = ""
    
    //MARK: Properties

    class viewController: UIViewController, UITextFieldDelegate, WKScriptMessageHandler, WKNavigationDelegate, WKUIDelegate {
        func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        }
       
        @IBOutlet weak var Username: UITextField!
        
        @IBOutlet weak var Password: UITextField!
        
        @IBOutlet weak var Server: UITextField!

        @IBOutlet weak var SignIn: UIButton!
        
        
        var webView: WKWebView!
        
        var activityIndicator = UIActivityIndicatorView(style: .medium)
        var activityIndicatorBkg = UIView()
        
        var logoutEvent: String = "logout"
        var loginEvent: String = "login"
        var isFirstLogin = true
        
        let mainURL = "https://www.rastrac.net"
        let backupURL = "https://demo.rastrac.net"

        let settings = UserDefaults()
        
        struct KeychainError: Error {
            var status: OSStatus

            var localizedDescription: String {
                return SecCopyErrorMessageString(status, nil) as String? ?? "Unknown error."
            }
        }
        
    }
    
    var body: some View {
        
//MARK: UI
        
        ZStack {
            Color(red: 233/255, green:233/255, blue: 233/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image("protocol1")
                    .padding(.top, 30)
                Text("Welcome to the Alpha")
                    .foregroundColor(Color(red: 0/255, green: 0/255, blue: 0/255))
                    .font(.system(size: 15))
                    .multilineTextAlignment(.center)
                    .padding(.top, 0)
                Text("Sign In")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 0)
                TextField("Username", text: $username)
                    .frame(width: 300, height: 45)
                    .background(Color(.white))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(Font.system(size: 16))
                    .multilineTextAlignment(.center)
                    .cornerRadius(22)
               SecureField("Password", text: $password) //made secure to hide password
                    .frame(width: 300, height: 45)
                    .background(Color(.white))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(Font.system(size: 16))
                    .multilineTextAlignment(.center)
                    .cornerRadius(22)
                TextField("Server", text: $server)
                    .frame(width: 300, height: 45)
                    .background(Color(.white))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(Font.system(size: 16))
                    .multilineTextAlignment(.center)
                    .cornerRadius(22)
                Button(action: {
                    print("User is logging in")
                }) {
                    Text("Sign In")
                        .padding(13)
                        .frame(width: 250, height: 45)
                        .foregroundColor(.white)
                        .background(Color(red: 179/255, green: 0/255, blue: 30/255))
                        .cornerRadius(22)
                        .font(.system(size: 15))
                    
                }
                Spacer()
            }
        }
            }
        }


//MARK: End

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

