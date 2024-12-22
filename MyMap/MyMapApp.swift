//
//  MyMapApp.swift
//  MyMap
//
//  Created by James Allen on 21/12/2024.
//

import SwiftUI

@main
struct MyMapApp: App {
    @StateObject private var vm = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
    }
}
