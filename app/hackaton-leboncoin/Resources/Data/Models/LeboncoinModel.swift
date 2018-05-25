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

struct Leboncoin: Codable {
    let ads: [Ad]
    let total, totalAll, totalPro, totalPrivate: Int
    
    enum CodingKeys: String, CodingKey {
        case ads, total
        case totalAll = "total_all"
        case totalPro = "total_pro"
        case totalPrivate = "total_private"
    }
}

struct Ad: Codable {
    let adType: String
    let attributes: [Attribute]
    let body, categoryID, categoryName, expirationDate: String
    let firstPublicationDate: String
    let hasPhone: Bool
    let images: Images
    let indexDate: String
    let listID: Int
    let location: Location
    let options: Options
    let owner: Owner
    let price: [Int]
    let priceCalendar: JSONNull?
    let subject, url: String
    
    enum CodingKeys: String, CodingKey {
        case adType = "ad_type"
        case attributes, body
        case categoryID = "category_id"
        case categoryName = "category_name"
        case expirationDate = "expiration_date"
        case firstPublicationDate = "first_publication_date"
        case hasPhone = "has_phone"
        case images
        case indexDate = "index_date"
        case listID = "list_id"
        case location, options, owner, price
        case priceCalendar = "price_calendar"
        case subject, url
    }
}

struct Attribute: Codable {
    let generic: Bool
    let key, keyLabel, value, valueLabel: String
    
    enum CodingKeys: String, CodingKey {
        case generic, key
        case keyLabel = "key_label"
        case value
        case valueLabel = "value_label"
    }
}

struct Images: Codable {
    let nbImages: Int
    let smallURL, thumbURL: String
    let urls, urlsLarge, urlsThumb: [String]
    
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
    let city, cityLabel, departmentID, departmentName: String
    let isShape: Bool
    let lat, lng: Double
    let provider, regionID, regionName, source: String
    let zipcode: String
    
    enum CodingKeys: String, CodingKey {
        case city
        case cityLabel = "city_label"
        case departmentID = "department_id"
        case departmentName = "department_name"
        case isShape = "is_shape"
        case lat, lng, provider
        case regionID = "region_id"
        case regionName = "region_name"
        case source, zipcode
    }
}

struct Options: Codable {
    let booster, gallery, hasOption, photosup: Bool
    let subToplist, urgent: Bool
    
    enum CodingKeys: String, CodingKey {
        case booster, gallery
        case hasOption = "has_option"
        case photosup
        case subToplist = "sub_toplist"
        case urgent
    }
}

struct Owner: Codable {
    let name: String
    let noSalesmen: Bool
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case noSalesmen = "no_salesmen"
        case type
    }
}

// MARK: Encode/decode helpers

class JSONNull: Codable {
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
