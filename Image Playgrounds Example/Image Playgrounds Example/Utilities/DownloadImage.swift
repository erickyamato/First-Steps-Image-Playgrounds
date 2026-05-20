//
//  DownloadImage.swift
//  Image Playgrounds Example
//
//  Created by Erick Yamato on 20/05/26.
//

import SwiftUI
import UniformTypeIdentifiers

#if os(macOS)
func downloadImage(from url: URL) {
    let savePanel = NSSavePanel()
    savePanel.allowedContentTypes = [UTType.image]
    savePanel.nameFieldStringValue = url.lastPathComponent
    
    savePanel.begin { response in
        if response == .OK, let saveURL = savePanel.url {
            do {
                try FileManager.default.copyItem(at: url, to: saveURL)
            } catch {
                print("Error saving file: \(error)")
            }
        }
    }
}
#endif
