//
//  NewsAppApp.swift
//  NewsApp
//
//  Created by Abbas Mehdi on 04/12/2024.
//

import SwiftUI

@main
struct SimpleNewsApp: App {
    var body: some Scene {
        WindowGroup {
            if #available(iOS 16.0, *) {
                NavigationStack {
                    MainView()
                }
            } else {
                NavigationView {
                    MainView()
                }
            }
        }
    }
}
