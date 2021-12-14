//
//  LandmarkRow.swift
//  Landmark
//
//  Created by 辻大地 on 2021/12/10.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
          landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                // systemNameは標準実装されているアイコンを呼び出す際のラベル
                // HTML/CSSでいうFontawesome的なもの
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[1])
            LandmarkRow(landmark: landmarkData[2])
            LandmarkRow(landmark: landmarkData[3])
            
        }.previewLayout(.fixed(width: 300, height: 70))

        
    }
}
