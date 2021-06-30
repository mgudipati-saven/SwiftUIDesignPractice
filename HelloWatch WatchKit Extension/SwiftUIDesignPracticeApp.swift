//
//  SwiftUIDesignPracticeApp.swift
//  HelloWatch WatchKit Extension
//
//  Created by Murty Gudipati on 27/06/21.
//

import SwiftUI

@main
struct SwiftUIDesignPracticeApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
