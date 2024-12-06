//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Lucas Matheus Guimarães on 04/12/24.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
