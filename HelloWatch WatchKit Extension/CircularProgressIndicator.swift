//
//  CircularProgressIndicator.swift
//  HelloWatch WatchKit Extension
//
//  Created by Murty Gudipati on 30/06/21.
//

import SwiftUI

struct CircularProgressIndicator: View {
  var body: some View {
    ZStack {
      Circle()
        .stroke(lineWidth: 15)
      Circle()
        .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: 0.75)
        .stroke(
          Color.red,
          style: StrokeStyle(lineWidth: 15, lineCap: .round))
        .overlay(Text("85%").font(.title))
    }
    .padding()
  }
}

struct CircularProgressIndicator_Previews: PreviewProvider {
  static var previews: some View {
    CircularProgressIndicator()
  }
}
