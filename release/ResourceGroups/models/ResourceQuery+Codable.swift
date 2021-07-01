// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ResourceQuery: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case query = "Query"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let query = query {
            try encodeContainer.encode(query, forKey: .query)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typeDecoded = try containerValues.decodeIfPresent(QueryType.self, forKey: .type)
        type = typeDecoded
        let queryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .query)
        query = queryDecoded
    }
}