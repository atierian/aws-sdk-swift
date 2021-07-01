// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UserContextDataType: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case encodedData = "EncodedData"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let encodedData = encodedData {
            try encodeContainer.encode(encodedData, forKey: .encodedData)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let encodedDataDecoded = try containerValues.decodeIfPresent(String.self, forKey: .encodedData)
        encodedData = encodedDataDecoded
    }
}