//
//  Image+Init.swift
//  Image Playgrounds Example
//
//  Created by Erick Yamato on 20/05/26.
//

import SwiftUI

extension Image {
    init?(data: Data) {
        #if os(iOS)
        guard let uiImage = UIImage(data: data) else { return nil }
        self.init(uiImage: uiImage)
        #else
        guard let nsImage = NSImage(data: data) else { return nil }
        self.init(nsImage: nsImage)
        #endif
    }
}
