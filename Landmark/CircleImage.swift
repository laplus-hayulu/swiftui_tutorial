//
//  CircleImage.swift
//  Landmark
//
//  Created by 辻大地 on 2021/12/10.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
      image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
