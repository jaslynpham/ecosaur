// ContentView.swift
// game
//
// Created by scholar on 28/04/1402 AP.
//when click start, you can start game, and will restart(nav link)
//restart timer with button to restart the timer
//
import SwiftUI
struct gameView: View {
    @State private var m = "According to a study published in the journal Science Advances in 2020 estimated that globally, plastic bottles accounted for approximately 14% of plastic waste generated. That's over 50 million tons!"
     @State private var f = "Fun Fact!"
     @State private var showAlert = false
     @State private var gameStarted = false
     @State private var currentBottleIndex = 0 // Keep track of the current bottle index
     @State private var bottleVisible: [Bool] = [true, false, false, false, false]
     @Environment(\.scenePhase) var scenePhase
     @State private var timeRemaining = 30
     @State private var isActive = true
     @State private var image = "bottle"
     @State private var showButton = false
     @State private var showingOverlay = true
     @State private var imageOffsets: [CGPoint] = Array(repeating: CGPoint.zero, count: 5)
     let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
     let screenWidth = UIScreen.main.bounds.width
     let screenHeight = UIScreen.main.bounds.height
     var body: some View {
       NavigationStack{
         ZStack {
           Image("beach")
             .resizable(resizingMode: .stretch)
             .aspectRatio(contentMode: .fit)
             .frame(width: 900.0, height: 900.0)
             .ignoresSafeArea()
             Text("Time: \(timeRemaining)")
               .font(.largeTitle)
               .foregroundColor(.white)
               .padding(.horizontal, 20)
               .padding(.vertical, 5)
               .background(.black.opacity(0.75))
               .clipShape(Capsule())
           VStack {
             Spacer()
             Spacer()
             Spacer()
             Spacer()
             Spacer()
             Spacer()
             Spacer()
             Spacer()
             Text("Score: \(bottles * 10)")
               .font(.title)
               .fontWeight(.heavy)
               .foregroundColor(Color.white)
             Button(action: { withAnimation {
                         if !gameStarted { // Check if the game has started
                           gameStarted = true // Set gameStarted to true
                           startGame() // Generate random positions for the bottles
                         } else {
                           updatePositions() // Update positions for the bottles
                         }
                       }
                     }) {
               ForEach(0..<5) { index in
                 Image("bottle")
                   .resizable(resizingMode: .stretch)
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 100.0, height: 100.0)
                   .position(
                     x: imageOffsets[index].x,
                     y: imageOffsets[index].y
                   )
               }
             }
             .ignoresSafeArea()
             .onAppear {
               for index in 0..<5 {
                 imageOffsets[index] = CGPoint(x: .random(in: 0..<screenWidth), y: .random(in: 0..<screenHeight))
               }
             }
             //}
             .toolbar {
               ToolbarItemGroup(placement: .status){
                 NavigationLink(destination: homepage()) {
                   Image("house")
                     .resizable(resizingMode: .stretch)
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 60.0, height: 60.0)
                 }
                 //     Divider()
                 NavigationLink(destination: articleView()) {
                   Image("dino")
                     .resizable(resizingMode: .stretch)
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 120.0, height: 120.0)
                 }
                 NavigationLink(destination: gameView()) {
                   Image("game")
                     .resizable(resizingMode: .stretch)
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 70.0, height: 70.0)
                 }
                 //     Divider()
                 //     Divider()
                 NavigationLink(destination: feedView()) {
                   Image("camera")
                     .resizable(resizingMode: .stretch)
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 70.0, height: 70.0)
                 }
               }
             }
             //    Path() { path in
             //     path.move(to: CGPoint(x: 0, y: 650))
             //     path.addLine(to: CGPoint(x: 600, y: 650))
             //    }
             //    .stroke(Color("darkBlue"), lineWidth: 10)
           }
           .navigationBarTitleDisplayMode(.inline)
           .navigationBarHidden(false)
           .cornerRadius(0)
           .allowsHitTesting(true)
         }
         .onReceive(timer) { time in
           guard isActive else { return }
           if timeRemaining > 0 {
             timeRemaining -= 1
           }
             if bottles == 5 {
               showAlert = true
             }
             if timeRemaining == 0 {
               f = "🎉Yay!🎉"
               m = "You scored \(bottles * 10) points!"
               showAlert = true
               timeRemaining = 30
               bottles = 0
             }
           }
         .onChange(of: scenePhase) { newPhase in
           if newPhase == .active {
             isActive = true
           } else {
             isActive = false
           }
         }
         .alert(isPresented: $showAlert) { // Move the showAlert alert outside the ZStack
           Alert(
             title: Text(f),
             message: Text(m),
             dismissButton: .default(Text("OK"))
           )
         }
       }
     }
     private func startGame() {
       for index in 0..<5 {
         bottles += 1
         imageOffsets[index] = CGPoint(x: .random(in: 0..<screenWidth), y: .random(in: 0..<screenHeight))
       }
     }
     // Update positions for the bottles
     private func updatePositions() {
       bottles += 1
       for index in 0..<5 {
         imageOffsets[index] = CGPoint(x: .random(in: 0..<screenWidth), y: .random(in: 0..<screenHeight))
       }
     }
   }
  struct gameView_Previews: PreviewProvider {
   static var previews: some View {
    ContentView()
   }
  }





