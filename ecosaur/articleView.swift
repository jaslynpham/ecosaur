import SwiftUI

struct articleView: View {
    @State private var streaks = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Color")
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        HStack {
                            Spacer()
                            Text("ecosaur")
                                .font(.title)
                                .fontWeight(.bold)
                            Spacer()
                            Text("\(streaks): 🌎")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        .padding()
                        VStack {
                            HStack {
                                Image("dino")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 150)
                                Text("Learn more:")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding()
                            .border(Color.black, width: 2)
                            Spacer()
                        }
                        Spacer()
                        VStack {
                            NavigationLink(destination: pollutionarticleView()) {
                                VStack {
                                    Image("trash")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125, height: 200)
                                        .scaleEffect(2.0)
                                }
                            }
                            .padding()
                            NavigationLink(destination: climatechangeView()) {
                                VStack {
                                    Image("polarbear")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125, height: 200)
                                        .scaleEffect(2.0)
                                }
                            }
                            NavigationLink(destination: climatechange1()) {
                                VStack {
                                    Image("Screenshot 2023-07-20 at 2.20.07 PM")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125, height: 200)
                                        .scaleEffect(2.0)
                                }
                            }
                            NavigationLink(destination: climatechange2()) {
                                VStack {
                                    Image("Screenshot 2023-07-20 at 2.22.02 PM")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125, height: 200)
                                        .scaleEffect(2.0)
                                }
                            }
                            NavigationLink(destination: climatechange3()) {
                                VStack {
                                    Image("Screenshot 2023-07-20 at 2.23.39 PM")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125, height: 200)
                                        .scaleEffect(2.0)
                                }
                            }
                            Spacer(minLength: 10)
                        .toolbar {
                                    ToolbarItemGroup(placement: .status) {
                                        NavigationLink(destination: homepage()) {
                                            Image("house")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 60.0, height: 45.0)
                                        }
                                        NavigationLink(destination: articleView()) {
                                            Image("dino")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 90.0, height: 200.0)
                                        }
                                        NavigationLink(destination: gameView()) {
                                            Image("game")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 50.0, height: 70.0)
                                        }
                                        Divider()
                                        Divider()
                                        NavigationLink(destination: feedView()) {
                                            Image("camera")
                                                .resizable(resizingMode: .stretch)
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 50.0, height: 70.0)
                                        }
                                    }
                                }
                        }
                        
                        // Add the Divider here inside the ScrollView
                        Divider()
                        
                    }
                }
                
                // The code below appears to be commented out, which is fine.
                // Uncomment it if you want to use it.
                
                /*
                Path() { path in
                    path.move(to: CGPoint(x: 0, y: 650))
                    path.addLine(to: CGPoint(x: 600, y: 650))
                }.stroke(Color("darkBlue"), lineWidth: 5)
                */
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(false)
        .background(Rectangle())
        .foregroundColor(Color("darkBlue"))
        .cornerRadius(0)
        .shadow(radius: 15)
        .padding()
    }
}

//import SwiftUI
//struct articleView: View {
//  @State private var streaks = 0
//  var body: some View {
//    NavigationView {
//      ZStack {
//        Color("Color")
//          .ignoresSafeArea()
//        ScrollView {
//          VStack {
//            HStack {
//              Spacer()
//              Text("    ecosaur")
//                .font(.title)
//                .fontWeight(.bold)
//              Spacer()
//              Text("\(streaks):earth_americas:")
//                .font(.title)
//                .fontWeight(.bold)
//            }
//            .padding()
//            VStack {
//              HStack {
//                  Image("Untitled design (13)")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 155, height: 50)
//                  Text("Learn more:")
//                    .font(.title)
//                    .fontWeight(.bold)
//                  Spacer()
//              }
//              .padding()
//              .border(Color.black, width: 5)
//              Spacer()
//            }
//            .padding()
//            VStack {
//              NavigationLink(destination: pollutionarticleView()) {
//                VStack {
//                  Text("Go to pollution article:")
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
//                    .font(.title2)
//                    .padding()
//                  Image("Untitled design (11)")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 125, height: 200)
//                    .scaleEffect(2.0)
//                }
//              }
//              .padding()
//              NavigationLink(destination: climatechangeView()) {
//                VStack {
//                  Text("Go to climate change and animals article:")
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
//                    .font(.title2)
//                    .padding()
//                  Image("Untitled design (12)")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 125, height: 200)
//                    .scaleEffect(2.0)
//                }
//              }
//              Spacer()
//            }
//          }
//        }
//      }
//    }
//  }
//}
//                Divider()
//                NavigationLink(destination: homepage()) {
//                    Image("dino")
//                        .resizable(resizingMode: .stretch)
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 120.0, height: 120.0)
//                }
//                NavigationLink(destination: ContentView()) {
//                    Image("game")
//                        .resizable(resizingMode: .stretch)
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 70.0, height: 70.0)
//                }
//                Divider()
//                NavigationLink(destination: feedView()) {
//                    Image("camera")
//                        .resizable(resizingMode: .stretch)
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 70.0, height: 70.0)
//                }
//        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarHidden(false)
//        .background(Rectangle())
//        .foregroundColor(Color("darkBlue"))
//        .cornerRadius(0)
//        .shadow(radius: 15)
//        .padding()
//    //        Path() { path in
//    //         path.move(to: CGPoint(x: 0, y: 650))
//    //         path.addLine(to: CGPoint(x: 600, y: 650))
//    //        }.stroke(Color("darkBlue"), lineWidth: 5)
//
    

