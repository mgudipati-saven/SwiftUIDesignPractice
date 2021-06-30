//
//  ContentView.swift
//  SwiftUIDesignPractice
//
//  Created by Murty Gudipati on 27/06/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Button {
        print("Pressed")
      } label: {
        Text("HELLO")
      }
      .buttonStyle(MyButtonStyle())
    }
  }
}

struct MyButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding()
      .background(
        configuration.isPressed
          ? Color.white.cornerRadius(5).shadow(radius: 10, x: 5, y: 5)
          : Color.white.cornerRadius(10).shadow(radius: 20, x: 5, y: 5)
      )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
