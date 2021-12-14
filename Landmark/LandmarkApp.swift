//
//  LandmarkApp.swift
//  Landmark
//
//  Created by 辻大地 on 2021/12/10.
//

import SwiftUI

@main
struct LandmarkApp: App {
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environmentObject(UserData())g
        }
    }
}
