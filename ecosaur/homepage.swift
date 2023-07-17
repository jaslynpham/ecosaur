////
//// SwiftUIView.swift
//// ecosaur
////
//// Created by Scholar on 7/18/23.
////
///

//
// SwiftUIView.swift
// ecosaur
//
// Created by Scholar on 7/18/23.
//
import SwiftUI
struct homepage: View {
  @State private var isOn = false
  @State private var crossed = false
  var body: some View {
    NavigationStack{
      ZStack{
        Color("lightBlue")
          .ignoresSafeArea()
        VStack{
          //top bar
          HStack{
            Spacer(minLength: 150)
            Text("ecosaur")
              .font(.title2)
              .fontWeight(.bold)
            Spacer()
            Text("\(streaks)🌎 ")
              .font(.title2)
              .fontWeight(.bold)
          }
          Path() { path in
            path.move(to: CGPoint(x: 0, y: 1))
            path.addLine(to: CGPoint(x: 600, y: 1))
          }.stroke(Color("darkBlue"), lineWidth: 10)
          //label
          HStack(spacing: 40){
            Image("house")
              .resizable(resizingMode: .stretch)
              .aspectRatio(contentMode: .fit)
              .frame(width: 100.0, height: 100.0)
            Text("Todays \ngoal:")
              .font(.largeTitle)
              .font(.subheadline)
              .fontWeight(.heavy)
              .fixedSize(horizontal: false, vertical: true)
          }
          Spacer(minLength: 30)
          //checkbox
          HStack{
            Toggle(isOn: $isOn) {
            }
            .toggleStyle(iOSCheckboxToggleStyle())
            .foregroundColor(Color("darkBlue"))
            .padding()
//            Text(words)
//              .font(.title)
//              .fontWeight(.bold)
//              .foregroundColor(Color.black)
            Spacer()
          }
          .background(Rectangle())
          .foregroundColor(Color("Color"))
          .cornerRadius(15)
          .shadow(radius: 15)
          .padding()
          Spacer(minLength: 40)
          //earth
          ZStack{
            Image("earth")
              .resizable(resizingMode: .stretch)
              .aspectRatio(contentMode: .fit)
              .frame(width: 230.0, height: 230.0)
            Text("Streaks: \n\(streaks)")
              .font(.largeTitle)
              .fontWeight(.bold)
              .foregroundColor(Color.white)
              .multilineTextAlignment(.center)
          }
          Spacer(minLength: 10)
          //Tool bar
          .toolbar {
              ToolbarItemGroup(placement: .status){
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
          .navigationBarTitleDisplayMode(.inline)
          .navigationBarHidden(false)
          .background(Rectangle())
          .foregroundColor(Color("darkBlue"))
          .cornerRadius(0)
          .shadow(radius: 15)
          .padding()
        }
        Path() { path in
          path.move(to: CGPoint(x: 0, y: 650))
          path.addLine(to: CGPoint(x: 600, y: 650))
        }.stroke(Color("darkBlue"), lineWidth: 10)
      }
    }
  }
  struct homepage_Previews: PreviewProvider {
    static var previews: some View {
      homepage()
    }
  }
  struct iOSCheckboxToggleStyle: ToggleStyle {
    @State private var isStrikethrough = false
    @State private var checklistItem = words
    func makeBody(configuration: Configuration) -> some View {
      // 1
      Button(action: {
        // 2
        configuration.isOn.toggle()
        isStrikethrough.toggle()
        if configuration.isOn{
          streaks += 1
        }
        else{
          streaks -= 1
        }
      }, label: {
        HStack {
          // 3
          Image(systemName: configuration.isOn ? "checkmark.square" : "square")
          Spacer(minLength: 10)
          Text(checklistItem)
            .font(.title)
            .fontWeight(.heavy)
            .strikethrough(isStrikethrough, color: .black)
            .fixedSize(horizontal: false, vertical: true)
          configuration.label
        }
      })
    }
  }
}
