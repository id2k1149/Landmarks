//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Max Franz Immelmann on 4/21/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        .commands {
            LandmarkCommands()
        }
        
        #if os(watchOS)
                WKNotificationScene(controller: NotificationController.self,
                                    category: "LandmarkNear")
        #endif
    }
}
