//
//  ImagePreview.swift
//  Image Playgrounds Example
//
//  Created by Erick Yamato on 20/05/26.
//


import SwiftUI

struct ImagePreview: View {
    
    let imageURL: URL?
    
    private var image: CGImage? {
        guard let imageURL,
              let sourceURL = CGImageSourceCreateWithURL(imageURL as CFURL, nil),
              let sourceImage = CGImageSourceCreateImageAtIndex(sourceURL, 0, nil)
        else { return nil }
        
        return sourceImage
    }
    
    var body: some View {
        Group {
            if let image {
                Image(image,
                      scale: 1,
                      label: Text(""))
                .resizable()
            } else {
                Color.init(white: 0.95)
                    .overlay( Image(systemName: "photo.fill") )
            }
        }
        .aspectRatio(contentMode: .fit)
        .foregroundColor(Color.init(white: 0.75))
        .font(.system(size: 50))
        .frame(width: 200, height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    ImagePreview(imageURL: nil)
}