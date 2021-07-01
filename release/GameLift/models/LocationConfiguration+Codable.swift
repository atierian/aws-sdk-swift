// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LocationConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case location = "Location"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let location = location {
            try encodeContainer.encode(location, forKey: .location)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let locationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .location)
        location = locationDecoded
    }
}