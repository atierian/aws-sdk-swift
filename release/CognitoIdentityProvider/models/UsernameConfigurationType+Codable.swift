// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UsernameConfigurationType: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case caseSensitive = "CaseSensitive"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let caseSensitive = caseSensitive {
            try encodeContainer.encode(caseSensitive, forKey: .caseSensitive)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let caseSensitiveDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .caseSensitive)
        caseSensitive = caseSensitiveDecoded
    }
}