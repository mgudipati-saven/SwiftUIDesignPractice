//
//  WeightScreen.swift
//  HelloWatch WatchKit Extension
//
//  Created by Murty Gudipati on 30/06/21.
//

import SwiftUI

struct WeightScreen: View {
  var body: some View {
    HStack(alignment: .top) {
      addWeight
      Divider()
      VStack(alignment: .leading) {
        progress
        Spacer()
        Divider()
        weightTrend
      }
    }
    .navigationTitle("Weight")
  }

  @State private var selectedWeight = "66"

  var addWeight: some View {
    VStack {
      Picker(selection: $selectedWeight, label: EmptyView()) {
        ForEach(weights, id: \.self) { weight in
          Text(weight)
        }
      }
      Button {

      } label: {
        Text("ADD")
      }
      .background(Color.green.cornerRadius(5))
    }
    .padding(.horizontal, 5)
  }

  var progress: some View {
    ProgressView(value: 0.5, total: 1.0) {
      HStack {
        Text("GOAL").font(.footnote).foregroundColor(.gray)
        Spacer()
        Text("60").font(.footnote).foregroundColor(.gray)
      }
    } currentValueLabel: {
      HStack {
        Spacer()
        Text("66").font(.footnote).foregroundColor(.gray)
        Spacer()
      }
    }
    .shadow(color: Color(red: 0, green: 0, blue: 0.6), radius: 4.0, x: 1.0, y: 2.0)
    .padding(.horizontal, 5)
  }

  var weightTrend: some View {
    VStack(alignment: .leading) {
      Text("Last 7 days").font(.footnote).foregroundColor(.gray)

      HStack(alignment: .bottom, spacing: 5) {
        ForEach(0..<7) { index in
          VStack {
            Capsule()
              .fill(Color.blue)
              .frame(width: barWidth, height: CGFloat(Double.random(in: 0.8...1.0)) * barHeight)
            Text("\(xlabels[index])").font(.system(size: 8))
          }
        }
      }
    }
    .padding(.horizontal, 5)
  }

  let barWidth: CGFloat = 6
  let barHeight: CGFloat = 70
  let xlabels = ["M", "T", "W", "T", "F", "S", "S"]
  let weights = ["65", "65.5", "66", "66.5", "67", "67.5", "68"].reversed()
}

struct WeightScreen_Previews: PreviewProvider {
  static var previews: some View {
    WeightScreen()
  }
}
