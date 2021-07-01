// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension InputColumn: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case type = "Type"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let type = type {
            try encodeContainer.encode(type.rawValue, forKey: .type)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
        let typeDecoded = try containerValues.decodeIfPresent(InputColumnDataType.self, forKey: .type)
        type = typeDecoded
    }
}