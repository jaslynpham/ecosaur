//
// ContentView.swift
// feed
//
// Created by scholar on 28/04/1402 AP.
//
import SwiftUI
struct feedView: View {
  var body: some View {
    NavigationStack {
      ZStack{
        Color(.white)
          .ignoresSafeArea()
        VStack{
            HStack {
                Text("                           ecosaur  ")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                .multilineTextAlignment(.trailing)
                Text("                          \(streaks)🌎")
                    .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.trailing)
            }
          Path() { path in
               path.move(to: CGPoint(x: 0, y: 20))
               path.addLine(to: CGPoint(x: -500, y: 20))
              path.addLine(to: CGPoint(x: 500, y: 20))

              }.stroke(Color("darkBlue"), lineWidth: 10)
          HStack(alignment: .center) {
            Text("Feed")
                  .font(.largeTitle)
                  .fontWeight(.bold)
                  .padding(.top, -150)
//                .frame(width: 100, height: 100)
           //   Spacer()
              Image("plus")
  //              .aspectRatio(contentMode: .fit).
                .resizable()
                .frame(width: 30.0, height: 28.0)
                .padding(.top, -143)
            }
            Spacer()
            Image("searchbar")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(.top, -100)
            

           
          }
            .toolbar {
              ToolbarItemGroup(placement: .status){
                NavigationLink(destination: ContentView()) {
                  Image("house")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60.0, height: 60.0)
                }
                Divider()
                NavigationLink(destination: articleView()) {
                  Image("dino")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120.0, height: 120.0)
                }
                NavigationLink(destination: ContentView()) {
                  Image("game")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70.0, height: 70.0)
                }
                Divider()
                Divider()
                NavigationLink(destination: ContentView()) {
                  Image("camera")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70.0, height: 70.0)
                }
              }
            }
           .navigationBarTitleDisplayMode(.inline)
           .navigationBarHidden(false)
           .shadow(radius: 15)
           .padding()
            Path() { path in
              path.move(to: CGPoint(x: 0, y: 650))
              path.addLine(to: CGPoint(x: 600, y: 650))
            }.stroke(Color("darkBlue"), lineWidth: 5)
          }
       ScrollView {
         // Content to be scrolled
         Spacer()
         Image("beachy")
           .resizable(resizingMode: .stretch)
           .aspectRatio(contentMode: .fit)
           .scaleEffect(0.9)
           .padding(.top, -20)
         Image("sophi")
           .resizable(resizingMode: .stretch)
           .aspectRatio(contentMode: .fit)
           .scaleEffect(0.9)
       }
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
//        Fix spacing between images and searchbar, fix spacing between line and ecosaur.
      }
    }
  }
    struct feedView_Previews: PreviewProvider {
      static var previews: some View {
        feedView()
      }
    }
