// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PrefixConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case prefixFormat
        case prefixType
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let prefixFormat = prefixFormat {
            try encodeContainer.encode(prefixFormat.rawValue, forKey: .prefixFormat)
        }
        if let prefixType = prefixType {
            try encodeContainer.encode(prefixType.rawValue, forKey: .prefixType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let prefixTypeDecoded = try containerValues.decodeIfPresent(PrefixType.self, forKey: .prefixType)
        prefixType = prefixTypeDecoded
        let prefixFormatDecoded = try containerValues.decodeIfPresent(PrefixFormat.self, forKey: .prefixFormat)
        prefixFormat = prefixFormatDecoded
    }
}