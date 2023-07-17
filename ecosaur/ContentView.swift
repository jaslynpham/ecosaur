////
////  ContentView.swift
////  ecosaur
////
////  Created by scholar on 7/17/23.
//
////import SwiftUI
//
////struct ContentView: View {
////    @State private var username: String = ""
////    @State private var password: String = ""
////
////    var body: some View {
////        VStack {
////            // Your content views here
////
////        }
////        .background(Color.yellow) // Set the desired background color
////        .ignoresSafeArea()
////
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isSignedIn = false //new state
    
    var body: some View {
        NavigationStack {
        ZStack {
            Color("Color")
                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
            
            VStack(spacing: 30.0) {
                    //top bar
//                    HStack{
//                      Spacer(minLength: 150)
//                      Text("ecosaur")
//                        .font(.title2)
//                        .fontWeight(.bold)
//                    Spacer()
//                      Text("🌎")
//                        .font(.title2)
//                        .fontWeight(.bold)
//                    }
                    Path() { path in
                      path.move(to: CGPoint(x: 0, y: 1))
                      path.addLine(to: CGPoint(x: 600, y: 1))
                    }.stroke(Color("darkBlue"), lineWidth: 10)
                    NavigationLink(destination: homepage(), isActive: $isSignedIn) {
                        EmptyView()                   }
                    .isDetailLink(false)
                
                    Image("dino")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)

                    Text("Create a new account for ecosaur")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .fixedSize(horizontal: false, vertical: true)
                
                    Text("Already registered? Log in.")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .background(Color.gray
                            .opacity(0.2))
                        .cornerRadius(8)
                        .padding(.horizontal)
                        .autocapitalization(.none)
                    
                    TextField("Email", text: $username)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .padding(.horizontal)
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .padding(.horizontal)
                    
                    NavigationLink(destination: homepage()){
                        Text("Sign Up")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                    }
                    .padding(.bottom, 50.0)
                
                    
                    //                Button(action: {
                    //                    login()
                    //                }) {
                    //
                    //                }
                    //                .padding()
                
                }
            
            }
            
            Spacer()
//           .frame(width: 0.0, height: 73.0)
        }
        
    }
    
    func login() {
        if username == "admin" && password == "password" {
            print("Login successful")
            self.isSignedIn = true
        } else {
            print("Invalid username or password")
        }
    }
}
struct HomeView: View{
    var body: some View{
        Text("Welcome to the home page!")
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
