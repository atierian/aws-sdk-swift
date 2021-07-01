// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Sort: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case sortBy = "SortBy"
        case sortOrder = "SortOrder"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let sortBy = sortBy {
            try encodeContainer.encode(sortBy, forKey: .sortBy)
        }
        if let sortOrder = sortOrder {
            try encodeContainer.encode(sortOrder.rawValue, forKey: .sortOrder)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sortByDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sortBy)
        sortBy = sortByDecoded
        let sortOrderDecoded = try containerValues.decodeIfPresent(SortOrder.self, forKey: .sortOrder)
        sortOrder = sortOrderDecoded
    }
}