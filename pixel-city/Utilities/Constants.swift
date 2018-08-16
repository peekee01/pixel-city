//
//  Constants.swift
//  pixel-city
//
//  Created by Pieter Kuijsten on 16/08/2018.
//  Copyright © 2018 Pieter Kuijsten. All rights reserved.
//

import Foundation

let apiKey = "6595f1aae2a120a7dadac75f36fd53c2"

func flickrUrl(forApikey key: String, withAnnotation annotation: DroppablePin, numberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=0.2&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
  
    print(url)
    return url
}

