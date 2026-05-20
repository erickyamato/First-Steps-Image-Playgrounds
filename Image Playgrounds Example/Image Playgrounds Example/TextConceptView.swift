//
//  TextConceptView.swift
//  Image Playgrounds Example
//
//  Created by Erick Yamato on 20/05/26.
//

import SwiftUI

struct TextConceptView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
#if os(iOS)
                .navigationBarItems(leading: EmptyView())
                .navigationBarTitleDisplayMode(.inline)
#endif
                .navigationBar(title: "TextConceptView")
        
        Divider()
        
        ImagePreview(imageURL: nil)
    }
}

#Preview {
    TextConceptView()
}
