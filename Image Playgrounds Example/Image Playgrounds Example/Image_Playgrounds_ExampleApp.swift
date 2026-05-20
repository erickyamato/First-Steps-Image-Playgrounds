//
//  Image_Playgrounds_ExampleApp.swift
//  Image Playgrounds Example
//
//  Created by Erick Yamato on 20/05/26.
//

import SwiftUI

@main
struct Image_Playgrounds_ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List {
                    NavigationLink("TextConceptView", destination: TextConceptView())
                    NavigationLink("CustomView", destination: ContentView())
                }
            }
        }
    }
}
