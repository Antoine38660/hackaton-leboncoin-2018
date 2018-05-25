//
//  LeboncoinModel.swift
//  hackaton-leboncoin
//
//  Created by Antoine BOISADAM on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

// To parse the JSON, add this file to your project and do:
//
//   let leboncoin = try? JSONDecoder().decode(Leboncoin.self, from: jsonData)

import Foundation

typealias Leboncoin = [LeboncoinElement]

struct LeboncoinElement: Codable {
    let body, categoryID, categoryName: String?
    let images: Images?
    let indexDate: String?
    let listID: Int?
    let location: Location?
    let price: Int?
    let subject, url, model: String?
    
    enum CodingKeys: String, CodingKey {
        case body
        case categoryID = "category_id"
        case categoryName = "category_name"
        case images
        case indexDate = "index_date"
        case listID = "list_id"
        case location, price, subject, url, model
    }
}

struct Images: Codable {
    let nbImages: Int?
    let smallURL, thumbURL: String?
    let urls, urlsLarge, urlsThumb: [String]?
    
    enum CodingKeys: String, CodingKey {
        case nbImages = "nb_images"
        case smallURL = "small_url"
        case thumbURL = "thumb_url"
        case urls
        case urlsLarge = "urls_large"
        case urlsThumb = "urls_thumb"
    }
}

struct Location: Codable {
    let city, cityLabel, departmentName: String?
    
    enum CodingKeys: String, CodingKey {
        case city
        case cityLabel = "city_label"
        case departmentName = "department_name"
    }
}
