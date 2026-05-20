//
//  NavigationBar.swift
//  Image Playgrounds Example
//
//  Created by Erick Yamato on 20/05/26.
//

import SwiftUI

extension View {
    func navigationBar(title: String?, imageURL: URL? = nil) -> some View {
        modifier(NavigationBarModifier(title: title, imageURL: imageURL))
    }
}

struct NavigationBarModifier: ViewModifier {
    let title: String?
    let imageURL: URL?
    
    func body(content: Content) -> some View {
        content.toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(systemName: "apple.image.playground")
                    Text(title ?? "")
                        .font(.footnote)
                }
            }
            
            if let imageURL {
#if os(macOS)
                ToolbarItem {
                    Button(action: { downloadImage(from: imageURL) }) {
                        Label("Download Image", systemImage: "arrowshape.down.circle.fill")
                    }
                }
#endif
                ToolbarItem {
                    ShareLink(item: imageURL) {
                        Label("Share", systemImage: "square.and.arrow.up")
                    }
                }
            }
        }
    }
}
