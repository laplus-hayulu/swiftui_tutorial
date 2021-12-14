//
//  Landmark.swift
//  Landmark
//
//  Created by 辻大地 on 2021/12/10.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var isFavorite: Bool
    
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    
    enum Category: String, CaseIterable, Hashable, Codable{
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}
 
struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
