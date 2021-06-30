//
//  ContentView.swift
//  HelloWatch WatchKit Extension
//
//  Created by Murty Gudipati on 27/06/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      WeightScreen()
      CircularProgressIndicator()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
