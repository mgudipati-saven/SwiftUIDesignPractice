//
//  TitleView.swift
//  SwiftUIDesignPractice
//
//  Created by Murty Gudipati on 27/06/21.
//

import SwiftUI

struct TitleView: View {
  let title: String

  var body: some View {
    Text(title)
      .font(.title)
      .fontWeight(.bold)
      .foregroundColor(.blue)
      .padding()
      .border(Color.orange, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
  }
}

struct TitleView_Previews: PreviewProvider {
  static var previews: some View {
    TitleView(title: "hello")
  }
}
