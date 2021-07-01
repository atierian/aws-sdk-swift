// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ValueHolder: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case ionBinary = "IonBinary"
        case ionText = "IonText"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let ionBinary = ionBinary {
            try encodeContainer.encode(ionBinary.base64EncodedString(), forKey: .ionBinary)
        }
        if let ionText = ionText {
            try encodeContainer.encode(ionText, forKey: .ionText)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ionBinaryDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .ionBinary)
        ionBinary = ionBinaryDecoded
        let ionTextDecoded = try containerValues.decodeIfPresent(String.self, forKey: .ionText)
        ionText = ionTextDecoded
    }
}