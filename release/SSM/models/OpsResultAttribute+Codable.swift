// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OpsResultAttribute: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case typeName = "TypeName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let typeName = typeName {
            try encodeContainer.encode(typeName, forKey: .typeName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let typeNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .typeName)
        typeName = typeNameDecoded
    }
}