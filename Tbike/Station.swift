//
//  Station.swift
//  Tbike
//
//  Created by Jack on 2018/5/30.
//  Copyright © 2018 Jack. All rights reserved.
//

import Foundation

struct Station: Decodable {
    var id: String
    var stationName: String
    var stationAddress: String
    var capacity: Int
    var avaliableBike: Int
    var avaliableCount: Int
    var stationLatitude: Double
    var stationLogitude: Double
    
    enum CodingKeys: String, CodingKey {
        case id = "$id"
        case stationName = "StationName"
        case stationAddress = "Address"
        case capacity = "Capacity"
        case avaliableBike = "AvaliableBikeCount"
        case avaliableSpaceCount = "AvaliableSpaceCount"
        case stationLatitude = "Latitude"
        case stationLogitude = "Longitude"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.stationName = try container.decode(String.self, forKey: .stationName)
        self.stationAddress = try container.decode(String.self, forKey: .stationAddress)
        self.capacity = try container.decode(Int.self, forKey: .capacity)
        self.avaliableBike = try container.decode(Int.self, forKey: .avaliableBike)
        self.avaliableCount = try container.decode(Int.self, forKey: .avaliableSpaceCount)
        self.stationLatitude = try container.decode(Double.self, forKey: .stationLatitude)
        self.stationLogitude = try container.decode(Double.self, forKey: .stationLogitude)
    }
}








